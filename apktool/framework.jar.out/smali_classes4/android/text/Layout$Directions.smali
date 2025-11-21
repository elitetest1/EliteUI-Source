.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field public greylist-max-o mDirections:[I


# direct methods
.method public constructor greylist-max-o <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[I

    return-void
.end method


# virtual methods
.method public blacklist getRunCount()I
    .locals 0

    iget-object p0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public blacklist getRunLength(I)I
    .locals 0

    iget-object p0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    const p1, 0x3ffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public blacklist getRunLevel(I)I
    .locals 0

    iget-object p0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    ushr-int/lit8 p0, p0, 0x1a

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public blacklist getRunStart(I)I
    .locals 0

    iget-object p0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public blacklist isRunRtl(I)Z
    .locals 1

    iget-object p0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
