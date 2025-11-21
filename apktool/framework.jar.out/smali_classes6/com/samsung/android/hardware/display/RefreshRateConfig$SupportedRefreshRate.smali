.class public Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
.super Ljava/lang/Object;
.source "RefreshRateConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/RefreshRateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedRefreshRate"
.end annotation


# static fields
.field static final blacklist DEFAULT_REFRESH_RATE:I = 0x3c


# instance fields
.field private blacklist maxRefreshRate:I

.field private blacklist minRefreshRate:I

.field private blacklist supportedRefreshRateListForPassive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$kp0CIfYeIfB3Lu_iIUvcmztsysA(Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->lambda$new$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/List;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x3c

    iput p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    iput p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    iget-object p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ZLcom/samsung/android/hardware/display/RefreshRateConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$getSupportedRefreshRateForPassive$1(ILjava/lang/Integer;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/Integer;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/2addr p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist getSupportedRefreshRateForPassive(I)I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist max()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    return p0
.end method

.method public blacklist min()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    return p0
.end method
