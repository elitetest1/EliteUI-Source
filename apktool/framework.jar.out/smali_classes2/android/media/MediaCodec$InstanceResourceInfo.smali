.class public final Landroid/media/MediaCodec$InstanceResourceInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceResourceInfo"
.end annotation


# instance fields
.field blacklist mName:Ljava/lang/String;

.field blacklist mPerFrameCount:J

.field blacklist mStaticCount:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec$InstanceResourceInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPerFrameCount()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaCodec$InstanceResourceInfo;->mPerFrameCount:J

    return-wide v0
.end method

.method public blacklist getStaticCount()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaCodec$InstanceResourceInfo;->mStaticCount:J

    return-wide v0
.end method
