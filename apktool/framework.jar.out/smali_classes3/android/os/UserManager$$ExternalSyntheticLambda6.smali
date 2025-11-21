.class public final synthetic Landroid/os/UserManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IpcDataCache$RemoteCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/UserManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/UserManager$$ExternalSyntheticLambda6;->f$0:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/os/UserManager$$ExternalSyntheticLambda6;->f$0:Landroid/os/UserManager;

    check-cast p1, Landroid/os/UserManager$QueryUserId;

    invoke-static {p0, p1}, Landroid/os/UserManager;->$r8$lambda$HTVfsYiNL9khO7ijfgU05Ds90Zw(Landroid/os/UserManager;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;

    move-result-object p0

    return-object p0
.end method
