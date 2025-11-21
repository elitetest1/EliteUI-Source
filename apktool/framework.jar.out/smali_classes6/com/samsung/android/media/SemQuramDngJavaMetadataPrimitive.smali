.class public Lcom/samsung/android/media/SemQuramDngJavaMetadataPrimitive;
.super Ljava/lang/Object;
.source "SemQuramDngJavaMetadataPrimitive.java"


# instance fields
.field blacklist mBaseOrientation:J

.field blacklist mCropHeight:I

.field blacklist mCropOriginX:I

.field blacklist mCropOriginY:I

.field blacklist mCropWidth:I

.field blacklist mEmbeddedXMPDigest:[B

.field blacklist mHasBaseOrientation:Z

.field blacklist mIPTCBlock:[B

.field blacklist mIPTCBlockSize:J

.field blacklist mIPTCOffset:J

.field blacklist mImageHeight:I

.field blacklist mImageWidth:I

.field blacklist mIsMakerNoteSafe:Z

.field blacklist mMakerNote:[B

.field blacklist mMakerNoteSize:J

.field blacklist mOriginalExif:Lcom/samsung/android/media/SemQuramDngJavaExifPrimitive;

.field blacklist mSourceMIME:Ljava/lang/String;

.field blacklist mXMPinSidecar:Z

.field blacklist mXMPisNewer:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramDngJavaMetadataPrimitive;->mEmbeddedXMPDigest:[B

    return-void
.end method
