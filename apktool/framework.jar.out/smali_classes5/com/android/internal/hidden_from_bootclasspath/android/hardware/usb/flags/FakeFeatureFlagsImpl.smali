.class public Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;
.super Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/CustomFeatureFlags;
.source "FakeFeatureFlagsImpl.java"


# instance fields
.field private final blacklist mDefaults:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

.field private final blacklist mFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;-><init>(Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/CustomFeatureFlags;-><init>(Ljava/util/function/BiPredicate;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    invoke-virtual {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->getFlagNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;

    if-eqz p0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not set"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist resetAll()V
    .locals 2

    iget-object p0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setFlag(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "no such flag "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
