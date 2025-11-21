.class public final Landroid/tracing/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/tracing/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist clientSideProtoLogging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist perfettoIme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist perfettoImeTracing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist perfettoProtologTracing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist perfettoTransitionTracing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist perfettoViewCaptureTracing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist perfettoWmDump()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist perfettoWmDumpCts()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist perfettoWmTracing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist systemServerLargePerfettoShmemBuffer()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
