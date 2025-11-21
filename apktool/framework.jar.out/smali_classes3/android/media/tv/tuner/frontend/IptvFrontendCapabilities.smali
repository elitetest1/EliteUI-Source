.class public Landroid/media/tv/tuner/frontend/IptvFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "IptvFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mProtocolCap:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendCapabilities;->mProtocolCap:I

    return-void
.end method


# virtual methods
.method public whitelist getProtocolCapability()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendCapabilities;->mProtocolCap:I

    return p0
.end method
