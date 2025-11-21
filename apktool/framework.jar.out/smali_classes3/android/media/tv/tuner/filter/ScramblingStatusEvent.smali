.class public final Landroid/media/tv/tuner/filter/ScramblingStatusEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "ScramblingStatusEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mScramblingStatus:I


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/ScramblingStatusEvent;->mScramblingStatus:I

    return-void
.end method


# virtual methods
.method public whitelist getScramblingStatus()I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/filter/ScramblingStatusEvent;->mScramblingStatus:I

    return p0
.end method
