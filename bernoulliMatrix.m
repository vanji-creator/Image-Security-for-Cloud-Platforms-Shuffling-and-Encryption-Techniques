original_image = imread("C:\Users\Asus\Desktop\final year project\matlab code\ogdog.jpg");
original_image = rgb2gray(original_image);

dct_coefficients = dct2(original_image);

% Generate Bernoulli matrix
M = 192;
N = 256;
Bernoulli_Matrix = sign(randn(M, N));

compressed_values =  Bernoulli_Matrix * dct_coefficients;

A = Bernoulli_Matrix;
x = compressed_values;

sigma_min = 0.01; % or 0.5, depending on your needs
resulting_s = SL01(A, x, sigma_min);
recovered_image = idct2(resulting_s);

% Display the original and reconstructed images
subplot(1, 2, 1), imshow(uint8(original_image)), title('Original Image');
subplot(1, 2, 2), imshow(uint8(idct2(resulting_s))), title('Reconstructed Image');
% imwrite(idct2(resulting_s),'resulting_s.jpg')
psnr_val = psnr((original_image), uint8(recovered_image))
ssim_val = ssim((original_image), uint8(recovered_image))
