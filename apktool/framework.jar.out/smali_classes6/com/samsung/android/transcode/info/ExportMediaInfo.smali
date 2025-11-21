.class public Lcom/samsung/android/transcode/info/ExportMediaInfo;
.super Ljava/lang/Object;
.source "ExportMediaInfo.java"


# instance fields
.field private final blacklist mFrameRate:I

.field private final blacklist mHeight:I

.field private final blacklist mIsHdr:Z

.field private final blacklist mVideoCodecType:Ljava/lang/String;

.field private final blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(IIILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mWidth:I

    iput p2, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mHeight:I

    iput p3, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mFrameRate:I

    iput-object p4, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mVideoCodecType:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mIsHdr:Z

    return-void
.end method


# virtual methods
.method public blacklist getFrameRate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mFrameRate:I

    return p0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mHeight:I

    return p0
.end method

.method public blacklist getVideoCodecType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mVideoCodecType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mWidth:I

    return p0
.end method

.method public blacklist isHdr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/transcode/info/ExportMediaInfo;->mIsHdr:Z

    return p0
.end method
