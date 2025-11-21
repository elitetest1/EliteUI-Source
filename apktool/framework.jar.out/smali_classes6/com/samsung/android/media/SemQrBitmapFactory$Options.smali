.class public Lcom/samsung/android/media/SemQrBitmapFactory$Options;
.super Ljava/lang/Object;
.source "SemQrBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemQrBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemQrBitmapFactory$Options$DecodeFromOption;,
        Lcom/samsung/android/media/SemQrBitmapFactory$Options$InputType;,
        Lcom/samsung/android/media/SemQrBitmapFactory$Options$Config;
    }
.end annotation


# instance fields
.field public greylist FileBlackLevel:[[[D

.field public greylist FileBlackLevelRepeatCols:I

.field public greylist FileBlackLevelRepeatRows:I

.field public blacklist FileWhiteLevel:[D

.field public greylist SamplesPerPixel:I

.field public greylist UseInfo:I

.field public greylist UserBlackLevel:[[[D

.field public greylist UserBlackLevelRepeatCols:I

.field public greylist UserBlackLevelRepeatRows:I

.field public greylist UserWhiteLevel:[D

.field public greylist bRegionDecoder:Z

.field public greylist count_nr:I

.field public greylist handle:J

.field public greylist height:I

.field public greylist inCancelingRequested:Z

.field public greylist inDecodeFromOption:I

.field public greylist inDither:Z

.field public greylist inInputType:I

.field public greylist inJustDecodeBounds:Z

.field public greylist inOptimizeCoding:I

.field public greylist inPreferredConfig:I

.field public greylist inPremultiplied:Z

.field public greylist inQualityOverSpeed:I

.field public greylist inSampleSize:I

.field public greylist inScaled:Z

.field public greylist mCropHeight:I

.field public greylist mCropOriginX:I

.field public greylist mCropOriginY:I

.field public greylist mCropWidth:I

.field private greylist mDecodeEndInfo:J

.field private greylist mDecodeHandle:J

.field private greylist mDecodeReadInfo:J

.field private greylist mDecodeStruct:J

.field private greylist mExifHandle:J

.field private greylist mHeight:I

.field private greylist mWidth:I

.field public greylist orientation:I

.field public greylist outHeight:I

.field public greylist outMimeType:Ljava/lang/String;

.field public greylist outWidth:I

.field public greylist rd_b:I

.field public greylist rd_l:I

.field public greylist rd_r:I

.field public greylist rd_t:I

.field public greylist width:I


# direct methods
.method public constructor greylist <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inQualityOverSpeed:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inInputType:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inDecodeFromOption:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inOptimizeCoding:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->orientation:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeHandle:J

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mHeight:I

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mExifHandle:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inCancelingRequested:Z

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeStruct:J

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeReadInfo:J

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeEndInfo:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inScaled:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPremultiplied:Z

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UseInfo:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->SamplesPerPixel:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevelRepeatCols:I

    const/4 v4, 0x3

    new-array v5, v4, [I

    const/4 v6, 0x2

    const/4 v7, 0x4

    aput v7, v5, v6

    const/16 v8, 0x8

    aput v8, v5, v1

    aput v8, v5, v0

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[D

    iput-object v5, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevel:[[[D

    new-array v5, v7, [D

    iput-object v5, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevelRepeatRows:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    new-array v4, v4, [I

    aput v7, v4, v6

    aput v8, v4, v1

    aput v8, v4, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    iput-object v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevel:[[[D

    new-array v1, v7, [D

    iput-object v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->count_nr:I

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->handle:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->bRegionDecoder:Z

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    return-void
.end method

.method public constructor greylist <init>(I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inSampleSize:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inQualityOverSpeed:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inInputType:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inDecodeFromOption:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inOptimizeCoding:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->orientation:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeHandle:J

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mHeight:I

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mExifHandle:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inCancelingRequested:Z

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeStruct:J

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeReadInfo:J

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeEndInfo:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inScaled:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->inPremultiplied:Z

    iput p1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UseInfo:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->SamplesPerPixel:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevelRepeatCols:I

    const/4 p1, 0x3

    new-array v4, p1, [I

    const/4 v5, 0x2

    const/4 v6, 0x4

    aput v6, v4, v5

    const/16 v7, 0x8

    aput v7, v4, v1

    aput v7, v4, v0

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[D

    iput-object v4, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevel:[[[D

    new-array v4, v6, [D

    iput-object v4, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevelRepeatRows:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    new-array p1, p1, [I

    aput v6, p1, v5

    aput v7, p1, v1

    aput v7, p1, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[D

    iput-object p1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevel:[[[D

    new-array p1, v6, [D

    iput-object p1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_t:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_b:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_l:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->rd_r:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->count_nr:I

    iput-wide v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->handle:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->bRegionDecoder:Z

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginX:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropOriginY:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mCropHeight:I

    return-void
.end method


# virtual methods
.method public greylist copyFile2User()V
    .locals 7

    iget v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevelRepeatRows:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    iget v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    iput v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevelRepeatCols:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevelRepeatRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevelRepeatCols:I

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_2
    iget v4, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->SamplesPerPixel:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserBlackLevel:[[[D

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileBlackLevel:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    iget v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->SamplesPerPixel:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->UserWhiteLevel:[D

    iget-object v2, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->FileWhiteLevel:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method protected blacklist getEndInfo()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeEndInfo:J

    return-wide v0
.end method

.method protected blacklist getExif()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mExifHandle:J

    return-wide v0
.end method

.method public blacklist getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeHandle:J

    return-wide v0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mHeight:I

    return p0
.end method

.method protected blacklist getReadInfo()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeReadInfo:J

    return-wide v0
.end method

.method protected blacklist getStruct()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeStruct:J

    return-wide v0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mWidth:I

    return p0
.end method

.method protected blacklist setEndInfo(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeEndInfo:J

    return-void
.end method

.method public blacklist setExif(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mExifHandle:J

    return-void
.end method

.method public blacklist setHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeHandle:J

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mHeight:I

    return-void
.end method

.method protected blacklist setReadInfo(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeReadInfo:J

    return-void
.end method

.method protected blacklist setStruct(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mDecodeStruct:J

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/SemQrBitmapFactory$Options;->mWidth:I

    return-void
.end method
