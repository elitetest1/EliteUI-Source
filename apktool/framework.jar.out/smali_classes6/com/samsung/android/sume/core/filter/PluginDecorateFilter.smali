.class public abstract Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "PluginDecorateFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>",
        "Lcom/samsung/android/sume/core/filter/DecorateFilter;"
    }
.end annotation


# instance fields
.field protected blacklist plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    instance-of p0, p1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/plugin/NNPlugin;->getExecuteDelegator()Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p2, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p2

    :cond_0
    instance-of p1, p2, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-virtual {p2, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    return-void

    :cond_1
    instance-of p1, p2, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    new-instance p1, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->setMediaFilterUpdater(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V

    :cond_0
    return-void
.end method
