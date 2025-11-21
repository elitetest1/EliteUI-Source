.class Landroid/webkit/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipRange"
.end annotation


# instance fields
.field blacklist mException1:I

.field blacklist mException2:I

.field blacklist mHigh:I

.field blacklist mLow:I


# direct methods
.method constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/webkit/FindAddress$ZipRange;->mLow:I

    iput p2, p0, Landroid/webkit/FindAddress$ZipRange;->mHigh:I

    iput p3, p0, Landroid/webkit/FindAddress$ZipRange;->mException1:I

    iput p3, p0, Landroid/webkit/FindAddress$ZipRange;->mException2:I

    return-void
.end method


# virtual methods
.method blacklist matches(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Landroid/webkit/FindAddress$ZipRange;->mLow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/webkit/FindAddress$ZipRange;->mHigh:I

    if-le p1, v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/webkit/FindAddress$ZipRange;->mException1:I

    if-eq p1, v0, :cond_2

    iget p0, p0, Landroid/webkit/FindAddress$ZipRange;->mException2:I

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
