.class public Landroid/view/DisplayCutout$CutoutPathParserInfo;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CutoutPathParserInfo"
.end annotation


# instance fields
.field private final blacklist mCutoutSpec:Ljava/lang/String;

.field private final blacklist mDensity:F

.field private final blacklist mDisplayHeight:I

.field private final blacklist mDisplayWidth:I

.field private final blacklist mPhysicalDisplayHeight:I

.field private final blacklist mPhysicalDisplayWidth:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private final blacklist mRotation:I

.field private final blacklist mScale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhasCutout(Landroid/view/DisplayCutout$CutoutPathParserInfo;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->hasCutout()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(IIIIFLjava/lang/String;IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iput p2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iput p3, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iput p4, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iput p5, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    if-nez p6, :cond_0

    const-string p6, ""

    :cond_0
    iput-object p6, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iput p7, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iput p8, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iput p9, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    iget-object v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iget v0, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iput v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iget p1, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    iput p1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    return-void
.end method

.method private blacklist hasCutout()Z
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    iget v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    iget v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    iget v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    iget v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    iget v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    iget v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    iget v3, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    iget p1, p1, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public blacklist getCutoutSpec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDensity()F
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    return p0
.end method

.method public blacklist getDisplayHeight()I
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    return p0
.end method

.method public blacklist getDisplayWidth()I
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    return p0
.end method

.method public blacklist getPhysicalDisplayHeight()I
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    return p0
.end method

.method public blacklist getPhysicalDisplayWidth()I
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    return p0
.end method

.method public blacklist getPhysicalPixelDisplaySizeRatio()F
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    return p0
.end method

.method public blacklist getRotation()I
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    return p0
.end method

.method public blacklist getScale()F
    .locals 0

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const v1, 0xbc8f

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CutoutPathParserInfo{displayWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " displayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " physicalDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " physicalDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " density={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} cutoutSpec={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mCutoutSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} rotation={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} scale={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} physicalPixelDisplaySizeRatio={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/DisplayCutout$CutoutPathParserInfo;->mPhysicalPixelDisplaySizeRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
