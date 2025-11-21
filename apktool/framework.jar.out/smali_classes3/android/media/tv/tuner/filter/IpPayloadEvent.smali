.class public Landroid/media/tv/tuner/filter/IpPayloadEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "IpPayloadEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/IpPayloadEvent;->mDataLength:I

    return-void
.end method


# virtual methods
.method public whitelist getDataLength()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/IpPayloadEvent;->mDataLength:I

    return p0
.end method
