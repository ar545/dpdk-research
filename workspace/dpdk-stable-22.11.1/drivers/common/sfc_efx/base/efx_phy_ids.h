/* SPDX-License-Identifier: BSD-3-Clause
 *
 * Copyright(c) 2019-2021 Xilinx, Inc.
 * Copyright(c) 2013-2019 Solarflare Communications Inc.
 */

#ifndef	_SYS_EFX_PHY_IDS_H
#define	_SYS_EFX_PHY_IDS_H

#define	EFX_PHY_NULL	0

typedef enum efx_phy_type_e {			/* GENERATED BY scripts/genfwdef */
	EFX_PHY_TXC43128 = 1,
	EFX_PHY_SFX7101 = 3,
	EFX_PHY_QT2022C2 = 4,
	EFX_PHY_PM8358 = 6,
	EFX_PHY_SFT9001A = 8,
	EFX_PHY_QT2025C = 9,
	EFX_PHY_SFT9001B = 10,
	EFX_PHY_QLX111V = 12,
	EFX_PHY_QT2025_KR = 17,
	EFX_PHY_AEL3020 = 18,
	EFX_PHY_XFI_FARMI = 19,
} efx_phy_type_t;


#endif	/* _SYS_EFX_PHY_IDS_H */