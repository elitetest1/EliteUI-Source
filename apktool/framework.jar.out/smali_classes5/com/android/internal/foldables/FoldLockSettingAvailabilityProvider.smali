.class public Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;
.super Ljava/lang/Object;
.source "FoldLockSettingAvailabilityProvider.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FoldLockSettingAvailabilityProvider"


# instance fields
.field private final blacklist mFoldLockBehaviorResourceValue:Z

.field private final blacklist mFoldLockSettingEnabled:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockSettingEnabled:Ljava/util/function/Supplier;

    const v0, 0x11101b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockBehaviorResourceValue:Z

    return-void
.end method

.method private blacklist flagOrSystemProperty()Z
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/sysprop/FoldLockBehaviorProperties;->fold_lock_setting_enabled()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockSettingEnabled:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "FoldLockSettingAvailabilityProvider"

    const-string v2, "Flags not ready yet. Return false for com.android.internal.foldables.flags.fold_lock_setting_enabled"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public blacklist isFoldLockBehaviorAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockBehaviorResourceValue:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->flagOrSystemProperty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
