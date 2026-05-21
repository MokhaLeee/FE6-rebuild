.section .rodata.reloc_list

.align 2,0

.global pr_PInfoTable
pr_PInfoTable: .word PInfoTable

.global pr_JInfoTable
pr_JInfoTable: .word JInfoTable

.global pr_IInfoTable
pr_IInfoTable: .word IInfoTable

.global gpImg_Icons
gpImg_Icons: .word Img_Icons

.global gpPal_Icons
gpPal_Icons: .word Pal_Icons

.global gpAffinIcons
gpAffinIcons: .word gAffinIcons

.global gpMountIcons
gpMountIcons: .word gMountIcons

.global gpWTypeIcons
gpWTypeIcons: .word gWTypeIcons

.global gpJobGrowthList
gpJobGrowthList: .word gJobGrowthList

.global gpChapterInfoTable
gpChapterInfoTable: .word ChapterInfoTable

.global gpChapterAssets
gpChapterAssets: .word ChapterAssets

.global gpSongTable
gpSongTable: .word gSongTable

.global gpUnitMaxStatusConfigTable
gpUnitMaxStatusConfigTable: .word gUnitMaxStatusConfigTable
