.class public final Lcom/android/tradeinmode/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/tradeinmode/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist enableTradeInMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist tradeInMode2025q4()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
