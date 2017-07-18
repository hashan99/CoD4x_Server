;Imports of fx_random:
	extern sinf
	extern cosf

;Exports of fx_random:
	global FX_RandomDir
	global FX_InitRandom
	global fx_randomTable


SECTION .text


;FX_RandomDir(int, float*)
FX_RandomDir:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	movss xmm2, dword [eax*4+fx_randomTable+0x28]
	addss xmm2, xmm2
	movss xmm1, dword [_float_1_00000000]
	subss xmm2, xmm1
	movaps xmm0, xmm2
	mulss xmm0, xmm2
	subss xmm1, xmm0
	sqrtss xmm1, xmm1
	cvtss2sd xmm0, [eax*4+fx_randomTable+0x24]
	mulsd xmm0, [_double_6_28318531]
	cvtsd2ss xmm0, xmm0
	movss [ebp-0xc], xmm0
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	movss [ebp-0x38], xmm2
	call sinf
	fstp dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	movss [esp], xmm0
	call cosf
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	movss xmm1, dword [ebp-0x28]
	mulss xmm0, xmm1
	movss [ebx], xmm0
	mulss xmm1, [ebp-0x10]
	movss [ebx+0x4], xmm1
	movss xmm2, dword [ebp-0x38]
	movss [ebx+0x8], xmm2
	add esp, 0x54
	pop ebx
	pop ebp
	ret
	add [eax], al


;FX_InitRandom()
FX_InitRandom:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Zero initialized global or static variables of fx_random:
SECTION .bss


;Initialized global or static variables of fx_random:
SECTION .data


;Initialized constant data of fx_random:
SECTION .rdata
fx_randomTable: dd 0x3edc2faf, 0x3f15fb4f, 0x3e0f8545, 0x3eba4fb6, 0x3f60af04, 0x3f2d07bf, 0x3e3be3d6, 0x3e937454, 0x3f2f02e0, 0x3d91f676, 0x3f732b6e, 0x3ee90349, 0x3f5f563a, 0x3f576da8, 0x3ec07691, 0x3f260a18, 0x3f5ab690, 0x3c2010c2, 0x3efe528c, 0x3edd4503, 0x3eddc44c, 0x3e70cb5c, 0x3f0984e9, 0x3f1d9832, 0x3cf7acf5, 0x3d6a4192, 0x3f2845cf, 0x3e94b895, 0x3f673cd3, 0x3e6fef52, 0x3d544e0b, 0x3f6ad7a9, 0x3f6b5b26, 0x3ef42324, 0x3e5dba48, 0x3ee99289, 0x3f31e449, 0x3d351ea8, 0x3f21c0d2, 0x3f689520, 0x3dbc9e2a, 0x3f712fa9, 0x3ee033b9, 0x3ec5a954, 0x3f008a12, 0x3ee60334, 0x3d9e8986, 0x3ce3e1c7, 0x3f36cb82, 0x3eefbcdb, 0x3e295c30, 0x3f597a39, 0x3f166dfc, 0x3f412e8d, 0x3e013727, 0x3f571d02, 0x3e4aac7d, 0x3f20cacf, 0x3f2681dd, 0x3f2ef8b8, 0x3f74ae42, 0x3f07da68, 0x3f354e58, 0x3e8dda1f, 0x3f65c38e, 0x3e4c46d3, 0x3eeeea63, 0x3eeb10e3, 0x3f79ed1b, 0x3f7a0d23, 0x3f62447f, 0x3f72ab3c, 0x3e97c7d1, 0x3f5c7f72, 0x3f0d034d, 0x3e13f976, 0x3ee74b7d, 0x3e7632ec, 0x3f4f6b9c, 0x3f541aa1, 0x3f06697d, 0x3ebf6fc6, 0x3f3150fd, 0x3e0652bc, 0x3eb1c50d, 0x3ea15ebd, 0x3c082b07, 0x3ee657cb, 0x3effc037, 0x3f667f13, 0x3f48863a, 0x3f509b0a, 0x3ee5944e, 0x3eef38d6, 0x3f706991, 0x3f645aa7, 0x3e36ceba, 0x3ea1afc2, 0x3f549024, 0x3f7ed384, 0x3f7ee281, 0x3f558db3, 0x3f6fce5e, 0x3f17cccf, 0x3f53b400, 0x3e8188dc, 0x3f286aaa, 0x3f19ebdd, 0x3f37a8fa, 0x3e2580b8, 0x3efba975, 0x3f3e3f4c, 0x3f52f5dc, 0x3e8ee0d1, 0x3e138ffa, 0x3ed2c2a4, 0x3e372653, 0x3e772069, 0x3ea47f4b, 0x3dc92c59, 0x3f63a342, 0x3f48f1d9, 0x3edf1d51, 0x3ded430a, 0x3f11100f, 0x3e9b95e9, 0x3f7b6fba, 0x3e93ffd7, 0x3efd04c8, 0x3de197e1, 0x3f456501, 0x3f4e6d73, 0x3e6ed98d, 0x3f4cdd36, 0x3f3b5039, 0x3eae8e55, 0x3f4f0212, 0x3eb8e81d, 0x3ee885d0, 0x3f229466, 0x3e962c43, 0x3f3e753d, 0x3f475231, 0x3f375ef6, 0x3ed8d0e9, 0x3e8646b0, 0x3e68ed13, 0x3f0fea41, 0x3e6fe407, 0x3e5174c5, 0x3f47cf4a, 0x3f3cd7ff, 0x3e889720, 0x3f6dfbe5, 0x3e006446, 0x3d127f29, 0x3f2bf60c, 0x3f745371, 0x3f3cd320, 0x3f1d1fdf, 0x3f12104e, 0x3ed40a7f, 0x3e879744, 0x3f177f54, 0x3f18cfce, 0x3eda9035, 0x3ee580e8, 0x3e6dd900, 0x3da4aa7f, 0x3f38d04c, 0x3f1ccd58, 0x3f1736af, 0x3f4a39c7, 0x3f0940bd, 0x3f524a6e, 0x3ba050d8, 0x3e866b50, 0x3f39006a, 0x3ebd6f9e, 0x3f791e69, 0x3f227921, 0x3f5062d8, 0x3f217c66, 0x3f64c7cc, 0x3f3569e7, 0x3d0b38c9, 0x3ef84e86, 0x3c45bcc3, 0x3f6df3bb, 0x3e21f4ee, 0x3dcc14c2, 0x3f57a979, 0x3f790239, 0x3f2f165b, 0x3f759e6b, 0x3ee6e6c9, 0x3f522d27, 0x3e397b91, 0x3c1d8165, 0x3f6bc31e, 0x3eadfa32, 0x3f651fc7, 0x3d8717e3, 0x3f682aff, 0x3eb60555, 0x3e83e5b6, 0x3de39a46, 0x3f126525, 0x3e40f38b, 0x3ead52c3, 0x3d3fda61, 0x3f75b447, 0x3f4e3aaf, 0x3f6d5400, 0x3f186202, 0x3eeb0818, 0x3edd482a, 0x3f070ea4, 0x3e56d908, 0x3f4e5370, 0x3f1307ba, 0x3f1322c0, 0x3da4bf9f, 0x3f79621d, 0x3eafac39, 0x3f47e7b5, 0x3f0a34fe, 0x3e16a664, 0x3e575876, 0x3f30c33f, 0x3f26299c, 0x3b75ea27, 0x3e8356c7, 0x3d890bcd, 0x3ed9d3c0, 0x3f19ffc8, 0x3f7cb391, 0x3edcf213, 0x3efa917f, 0x3d687a68, 0x3e74c1ea, 0x3f125094, 0x3c815f61, 0x3f0bd139, 0x3e901467, 0x3d14ba14, 0x3e58cae0, 0x3f601da2, 0x3e668bd2, 0x3e6f388f, 0x3e97be68, 0x3de14b77, 0x3f2cbc9e, 0x3f29e83e, 0x3e66d824, 0x3e2b27c7, 0x3e6e7be0, 0x3ee178d8, 0x3ee206ea, 0x3f1a8107, 0x3e4c3e2f, 0x3eeecff6, 0x3f0d0d09, 0x3eeb9ba8, 0x3c5fbfce, 0x3f3591c8, 0x3f395b6f, 0x3f54af51, 0x3f566bbe, 0x3e52bb04, 0x3f270048, 0x3e06cdc5, 0x3f15bdce, 0x3eb52089, 0x3e94e859, 0x3e4098ef, 0x3f3c3bda, 0x3f52e6e5, 0x3f3d05a0, 0x3ea61cad, 0x3f4c5a4d, 0x3f625853, 0x3e972b3d, 0x3f165f5e, 0x3f054536, 0x3ecf8207, 0x3d2cf628, 0x3f642dbf, 0x3f3edb1c, 0x3e209616, 0x3ec49cf2, 0x3f6cc037, 0x3f605926, 0x3f49e6f8, 0x3f5c75e0, 0x3ec85d95, 0x3f36d5de, 0x3e01a454, 0x3f039c39, 0x3f3a5bfb, 0x3eb54a6c, 0x3f02e536, 0x3ecc5763, 0x3e3a1ab6, 0x3da4396f, 0x3f3247a4, 0x3f0bee6b, 0x3f06a63b, 0x3f0cbd4d, 0x3e9387cc, 0x3e0c0bb7, 0x3f51a01b, 0x3f525a54, 0x3e49a1d5, 0x3e9e15c1, 0x3f5e4857, 0x3ee40e27, 0x3d353237, 0x3e7d7184, 0x3d5e68a4, 0x3dffed36, 0x3df0eecc, 0x3e99b6c7, 0x3f602911, 0x3f16e9ee, 0x3f15445a, 0x3e2e071d, 0x3f307e3e, 0x3e4b3586, 0x3e242137, 0x3f3b94e0, 0x3f3ea058, 0x3f066923, 0x3f5c3965, 0x3f2800de, 0x3f5e0e1e, 0x3d13ff74, 0x3e50efdd, 0x3edaa535, 0x3f482529, 0x3f57f281, 0x3ecfd3ad, 0x3f600a00, 0x3f1d58b8, 0x3ea57796, 0x3f375b91, 0x3e2c730d, 0x3e9430c1, 0x3eb4f102, 0x3d87cff6, 0x3e406b67, 0x3f6dbf71, 0x3f12f31d, 0x3eaa86ca, 0x3e5dea29, 0x3d9b06a5, 0x3c33715c, 0x3efe7728, 0x3f7fbaa3, 0x3e833ae8, 0x3ea9bbbe, 0x3e94c707, 0x3e0269d2, 0x3ebec4b7, 0x3ef8b44f, 0x3c6e2989, 0x3ea18495, 0x3f6f5757, 0x3e689f86, 0x3e8b9708, 0x3e214511, 0x3e7b647e, 0x3e3c25c5, 0x3f7b8f8f, 0x3e9f3ccd, 0x3e9e31db, 0x3e871fb4, 0x3da74dad, 0x3f5480c0, 0x3f05b749, 0x3f274a75, 0x3f7d866a, 0x3f60ac1d, 0x3ccbc8b6, 0x3def1061, 0x3f575df9, 0x3f554b15, 0x3f29d196, 0x3e8d0112, 0x3e817c18, 0x3f63ecb7, 0x3eb3fc9e, 0x3f4adbf4, 0x3d7f0bbc, 0x3da1b10a, 0x3efa2175, 0x3e39973a, 0x3eb68897, 0x3f5db15d, 0x3f209ad2, 0x3f4323a7, 0x3e72434c, 0x3f0df339, 0x3e700b5a, 0x3d772cb8, 0x3e8a9836, 0x3f49d810, 0x3f273fac, 0x3f64e879, 0x3f0823ab, 0x3e662edf, 0x3c759ea8, 0x3e8dee8f, 0x3f07e2c7, 0x3e50d7df, 0x3f4b47c4, 0x3e6636a0, 0x3f6de664, 0x3f56dca2, 0x3f7ec5f6, 0x3eb3789f, 0x3e21ecd9, 0x3f0373d1, 0x3d1fb659, 0x3f760803, 0x3e66d392, 0x3f02af6a, 0x3f6eb5a1, 0x3f4a39a3, 0x3f05b64a, 0x3eb35ece, 0x3ea5a409, 0x3f638788, 0x3ee77e5a, 0x3f50f75d, 0x3f0debd0, 0x3d417ca5, 0x3f565860, 0x3dd298af, 0x3da418a8, 0x3f078d10, 0x3f605990, 0x3e9ae7a7, 0x3f19346c, 0x3db97cf9, 0x3f353bb2, 0x3e9c1a3a, 0x3f5158ce, 0x3d539fa5, 0x3f38d2a5, 0x3ec12892, 0x3f441bf1, 0x3eb4fc48, 0x3dc0390f, 0x3eb2c03b, 0x3e9e1343, 0x3f7026e9, 0x3e884060, 0x3eda0f14, 0x3f33a104, 0x3e9c276d, 0x3f7e497e, 0x3ee91dd5, 0x3f6f3758, 0x3d29da11, 0x3f3cd176, 0x3eb7223f, 0x3f5e815a, 0x3f313077, 0x3f7faa1f, 0x3f02a8ae, 0x3ec42415, 0x3f14a200, 0x3d826b4f, 0x3d1e7c0a, 0x3f379a51, 0x3f7bfd64, 0x3f38b662, 0x3f74293b, 0x3edc2faf, 0x3f15fb4f, 0x3e0f8545, 0x3eba4fb6, 0x3f60af04, 0x3f2d07bf, 0x3e3be3d6, 0x3e937454, 0x3f2f02e0, 0x3d91f676, 0x3f732b6e, 0x3ee90349, 0x3f5f563a, 0x3f576da8, 0x3ec07691, 0x3f260a18, 0x3f5ab690, 0x3c2010c2, 0x3efe528c, 0x3edd4503, 0x3eddc44c, 0x3e70cb5c, 0x3f0984e9, 0x3f1d9832, 0x3cf7acf5, 0x3d6a4192, 0x3f2845cf, 0x3e94b895, 0x0, 0x0, 0x0, 0x0, 0x0


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1_00000000:		dd 0x3f800000	; 1
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319

