.class public final Landroid/media/MediaCodec$GlobalResourceInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalResourceInfo"
.end annotation


# instance fields
.field blacklist mAvailable:J

.field blacklist mCapacity:J

.field blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAvailable()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaCodec$GlobalResourceInfo;->mAvailable:J

    return-wide v0
.end method

.method public blacklist getCapacity()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaCodec$GlobalResourceInfo;->mCapacity:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec$GlobalResourceInfo;->mName:Ljava/lang/String;

    return-object p0
.end method
