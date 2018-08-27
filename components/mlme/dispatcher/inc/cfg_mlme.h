/*
 * Copyright (c) 2018 The Linux Foundation. All rights reserved.
 *
 * Permission to use, copy, modify, and/or distribute this software for
 * any purpose with or without fee is hereby granted, provided that the
 * above copyright notice and this permission notice appear in all
 * copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
 * WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
 * AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
 * DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR
 * PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
 * TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
 * PERFORMANCE OF THIS SOFTWARE.
 */

#ifndef __CFG_MLME_H
#define __CFG_MLME_H

#include "cfg_define.h"
#include "cfg_converged.h"
#include "qdf_types.h"

#include "cfg_mlme_chainmask.h"
#include "cfg_mlme_ht_caps.h"
#include "cfg_mlme_vht_caps.h"
#include "cfg_mlme_rates.h"
#include "cfg_sap_protection.h"
#include "cfg_mlme_sap.h"

#define CFG_MLME_ALL \
	CFG_CHAINMASK_ALL \
	CFG_HT_CAPS_ALL \
	CFG_VHT_CAPS_ALL \
	CFG_RATES_ALL \
	CFG_SAP_PROTECTION_ALL \
	CFG_SAP_ALL

#endif /* __CFG_MLME_H */
