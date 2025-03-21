SELECT
	sample_id,
	dna_sequence,
	species,
	IF (LEFT (dna_sequence, 3) = 'ATG', 1, 0) as has_start,
	IF (
		RIGHT (dna_sequence, 3) = 'TAA'
		OR RIGHT (dna_sequence, 3) = 'TAG'
		OR RIGHT (dna_sequence, 3) = 'TGA',
		1,
		0
	) as has_stop,
	IF (INSTR (dna_sequence, 'ATAT') > 0, 1, 0) as has_atat,
	IF (
		INSTR (dna_sequence, 'GGG') > 0
		OR INSTR (dna_sequence, 'GGGG') > 0
		OR INSTR (dna_sequence, 'GGGGG') > 0,
		1,
		0
	) as has_ggg
FROM
	Samples
ORDER BY
	sample_id;
