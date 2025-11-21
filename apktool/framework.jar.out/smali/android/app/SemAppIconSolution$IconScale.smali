.class Landroid/app/SemAppIconSolution$IconScale;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemAppIconSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconScale"
.end annotation


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mIsCrop:Z

.field private blacklist mScale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScale(Landroid/app/SemAppIconSolution$IconScale;)F
    .locals 0

    iget p0, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return p0
.end method

.method public constructor blacklist <init>(IFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    iput p2, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    iput-boolean p3, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    return-void
.end method


# virtual methods
.method public blacklist getAlpha()I
    .locals 0

    iget p0, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    return p0
.end method

.method public blacklist getScale()F
    .locals 0

    iget p0, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return p0
.end method

.method public blacklist isCrop()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconScale[alpha="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
