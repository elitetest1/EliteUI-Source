.class public final synthetic Landroid/app/ActivityManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/HomeVisibilityListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/HomeVisibilityListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda4;->f$0:Landroid/app/HomeVisibilityListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda4;->f$0:Landroid/app/HomeVisibilityListener;

    invoke-static {p0}, Landroid/app/ActivityManager;->lambda$addHomeVisibilityListener$4(Landroid/app/HomeVisibilityListener;)V

    return-void
.end method
