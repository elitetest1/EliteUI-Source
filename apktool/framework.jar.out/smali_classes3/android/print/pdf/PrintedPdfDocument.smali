.class public Landroid/print/pdf/PrintedPdfDocument;
.super Landroid/graphics/pdf/PdfDocument;
.source "PrintedPdfDocument.java"


# static fields
.field private static final greylist-max-o MILS_PER_INCH:I = 0x3e8

.field private static final greylist-max-o POINTS_IN_INCH:I = 0x48


# instance fields
.field private final greylist-max-o mContentRect:Landroid/graphics/Rect;

.field private final greylist-max-o mPageHeight:I

.field private final greylist-max-o mPageWidth:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object p1

    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x42900000    # 72.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    invoke-virtual {p1}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object p2

    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    float-to-int p2, p2

    new-instance v1, Landroid/graphics/Rect;

    sub-int/2addr v0, v5

    sub-int/2addr p1, p2

    invoke-direct {v1, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public whitelist getPageContentRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist getPageHeight()I
    .locals 0

    iget p0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    return p0
.end method

.method public whitelist getPageWidth()I
    .locals 0

    iget p0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    return p0
.end method

.method public whitelist startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 3

    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    iget v1, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    iget-object p1, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/print/pdf/PrintedPdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object p0

    return-object p0
.end method
