.class public Landroid/app/ComponentOptions;
.super Ljava/lang/Object;
.source "ComponentOptions.java"


# static fields
.field public static final blacklist KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowed"


# instance fields
.field private blacklist mPendingIntentBalAllowed:Ljava/lang/Integer;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/ComponentOptions;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ComponentOptions;

    invoke-direct {v0, p0}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getPendingIntentBackgroundActivityStartMode()I
    .locals 0

    iget-object p0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    return-void
.end method

.method public blacklist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method
