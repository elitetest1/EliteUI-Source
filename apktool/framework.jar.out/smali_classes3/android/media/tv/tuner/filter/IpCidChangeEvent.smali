.class public final Landroid/media/tv/tuner/filter/IpCidChangeEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "IpCidChangeEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mCid:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/IpCidChangeEvent;->mCid:I

    return-void
.end method


# virtual methods
.method public whitelist getIpCid()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/IpCidChangeEvent;->mCid:I

    return p0
.end method
