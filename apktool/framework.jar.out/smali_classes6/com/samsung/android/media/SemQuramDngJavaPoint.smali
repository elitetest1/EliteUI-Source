.class public Lcom/samsung/android/media/SemQuramDngJavaPoint;
.super Ljava/lang/Object;
.source "SemQuramDngJavaPoint.java"


# instance fields
.field blacklist x:I

.field blacklist y:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->x:I

    iput v0, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->y:I

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->x:I

    iput p2, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->y:I

    return-void
.end method


# virtual methods
.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->y:I

    return p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->x:I

    return p0
.end method

.method public blacklist getX()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->x:I

    return p0
.end method

.method public blacklist getY()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQuramDngJavaPoint;->y:I

    return p0
.end method
