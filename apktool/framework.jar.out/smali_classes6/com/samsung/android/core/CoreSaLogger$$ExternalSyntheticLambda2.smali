.class public final synthetic Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;

.field public final synthetic blacklist f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->lambda$sendSaLoggingBroadcastForAdvancedSetting$3(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method
