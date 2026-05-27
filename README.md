# Image Security for Cloud Platforms: Shuffling and Encryption Techniques

## Project Overview

This project implements advanced **image encryption and security techniques** for cloud platforms using **chaotic shuffling** and **2D chaotic encryption functions**. The focus is on securing image data through pixel permutation and compression-based encryption, with applications for sensitive image storage and transmission in cloud environments.

## Key Features

### 1. **Chaotic Encryption Methods**
   - **Tinkerbell Map**: A 2D chaotic function with superior ergodic properties
   - **Lozi Map**: Piecewise linear chaotic map for pixel shuffling
   - **Arnold's Cat Map**: Classical area-preserving chaotic transformation
   - **Modified Tinkerbell Map**: Enhanced chaos-based encryption with x⁴ term for increased complexity

### 2. **Image Processing Pipeline**
   - **Pixel Permutation**: Scramble image pixels using chaotic maps
   - **DCT Compression**: Discrete Cosine Transform for data compression
   - **Encryption/Decryption**: Reversible transformation ensuring data recovery

### 3. **Cloud Platform Integration**
   - Secure image storage with encrypted format
   - Efficient handling of compressed encrypted images
   - Support for batch encryption/decryption operations

## Project Files

### Python Notebooks (Jupyter)
- **`chaotic_encryption.ipynb`** - Main implementation of chaotic encryption algorithms
  - Tinkerbell Map implementation
  - Image encryption/decryption pipeline
  - Visual demonstrations with sample images
  - Test results with encrypted/decrypted image comparisons

- **`map_evaluation.ipynb`** - Analysis and evaluation of chaotic maps
  - Tinkerbell Map attractor visualization
  - Lozi Map phase diagrams
  - Comparison of original vs. modified chaotic maps
  - Validation of ergodic properties

### MATLAB Scripts
- **`phase2.m`** - Phase 2 implementation and testing
- **`SL01.m`** - Supporting linear algebra operations
- **`bernoulliMatrix.m`** - Bernoulli matrix generation for encryption
- **`gaussianMatrix.m`** - Gaussian matrix generation for initialization

### Reference
- **`Pixel Permutation with Chaos Secure Image Encryption using 2D Chaotic Function and DCT Compression.pdf`** - Complete research paper and technical documentation

### Sample Results
- **`tinkerbell_encrypted_image.jpg`** - Encrypted image sample
- **`tinkerbell_decrypted_image.jpg`** - Successfully decrypted image
- **`compressed_image.jpg`** - Image after DCT compression
- **`reconstructed_image.jpg`** - Reconstructed image from compressed format

## Technical Details

### Chaotic Map Parameters

#### Tinkerbell Map
```
x_{n+1} = x_n^2 - y_n^2 + a·x_n + b·y_n
y_{n+1} = 2·x_n·y_n + c·x_n + d·y_n

Default Parameters:
a = 0.9
b = -0.6013
c = 2.0
d = 0.5
```

#### Modified Tinkerbell Map (Enhanced)
```
x_{n+1} = x_n^4 - y_n^2 + a·x_n + b·y_n  (increased complexity)
y_{n+1} = 2·x_n·y_n + c·x_n + d·y_n
```

#### Lozi Map
```
x_{n+1} = 1 - |y_n - a·x_n|
y_{n+1} = b·x_n

Default Parameters:
a = 1.5
b = 0.5
```

### Encryption Process
1. **Pixel Extraction**: Extract RGB or grayscale pixels from image
2. **Chaotic Sequence Generation**: Generate deterministic chaos using seed
3. **Pixel Permutation**: Shuffle pixel positions using chaotic map
4. **Encryption Layer**: Apply chaotic transformation to pixel values
5. **Compression**: Optional DCT compression for storage efficiency

### Decryption Process
The process is fully reversible:
- **Decompression**: Restore original image dimensions
- **Reverse Transformation**: Apply inverse chaotic transformation
- **Pixel Restoration**: Recover original pixel positions and values

## Technology Stack

- **Python 3.9+** - Primary implementation language
- **NumPy** - Numerical operations and matrix manipulations
- **Matplotlib** - Visualization of chaotic maps and results
- **MATLAB** - Supporting algorithms and validations
- **Jupyter Notebook** - Interactive experimentation and testing

## Applications

✓ **Cloud Storage Security** - Encrypt images before uploading to cloud  
✓ **Medical Imaging** - Secure sensitive patient imaging data  
✓ **Satellite Imagery** - Protect classified or sensitive geospatial data  
✓ **Archive Systems** - Long-term secure image storage  
✓ **IoT Image Transmission** - Efficient encrypted image transfer for IoT devices  

## Usage

### Basic Encryption Example
```python
from chaotic_encryption import TinkerbellEncryptor

# Initialize encryptor with seed
encryptor = TinkerbellEncryptor(seed=12345)

# Encrypt image
encrypted_image = encryptor.encrypt(input_image)

# Decrypt image
decrypted_image = encryptor.decrypt(encrypted_image)
```

### Viewing Results
Open the Jupyter notebooks to see:
- Interactive encryption demonstrations
- Chaotic map attractors and properties
- Before/after image comparisons
- Performance metrics and security analysis

## Project Status

**Phase 2** - Complete implementation with:
- ✅ Chaotic encryption algorithms
- ✅ DCT compression integration
- ✅ Image encryption/decryption pipeline
- ✅ Comprehensive testing and validation
- ✅ Sample encrypted/decrypted images

## Security Properties

- **Sensitivity to Initial Conditions**: Exponential sensitivity ensures security
- **Deterministic Chaos**: Reproducible yet unpredictable sequences
- **Ergodicity**: Chaotic maps explore the entire state space
- **Large Key Space**: Floating-point parameters provide extensive key space
- **Non-Linear Transformation**: Resistant to linear cryptanalysis

## Performance Metrics

The implementation demonstrates:
- Fast encryption/decryption processing
- Efficient memory usage with compressed formats
- Effective pixel scrambling without visual patterns
- Reversible transformation with perfect reconstruction

## References

See the included PDF paper:
- *Pixel Permutation with Chaos Secure Image Encryption using 2D Chaotic Function and DCT Compression*

This research documents the theoretical foundations, implementation details, and security analysis of the encryption techniques used in this project.

## Author

**Project Phase 2** - Image Security Implementation using Chaotic Techniques

## License

Educational project for secure image encryption research.

---

For questions or contributions, please refer to the research paper and implementation notes in the Jupyter notebooks.
