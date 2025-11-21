.class final Landroid/graphics/Bitmap$DumpData;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpData"
.end annotation


# instance fields
.field private blacklist buffers:[[B

.field private blacklist count:I

.field private blacklist format:I

.field private blacklist max:I

.field private blacklist natives:[J


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    iget p1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    iput p1, p0, Landroid/graphics/Bitmap$DumpData;->format:I

    new-array p1, p2, [J

    iput-object p1, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    new-array p1, p2, [[B

    iput-object p1, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    return-void
.end method


# virtual methods
.method public blacklist add(J[B)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    aput-object p3, p1, v1

    iget p1, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    if-lt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v1, 0x1

    :goto_0
    iput p1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    return-void
.end method

.method public blacklist size()I
    .locals 0

    iget p0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    return p0
.end method
