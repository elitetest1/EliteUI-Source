.class public Lcom/samsung/android/media/SemQuramDngDateTimeStorageInfo;
.super Ljava/lang/Object;
.source "SemQuramDngDateTimeStorageInfo.java"


# instance fields
.field blacklist mFormat:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

.field blacklist mOffset:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFormat()Lcom/samsung/android/media/SemQuramDngDateTimeFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemQuramDngDateTimeStorageInfo;->mFormat:Lcom/samsung/android/media/SemQuramDngDateTimeFormat;

    return-object p0
.end method

.method public blacklist getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramDngDateTimeStorageInfo;->mOffset:J

    return-wide v0
.end method
