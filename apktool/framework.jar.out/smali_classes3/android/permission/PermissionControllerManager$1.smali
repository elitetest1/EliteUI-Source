.class Landroid/permission/PermissionControllerManager$1;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/permission/IPermissionController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/permission/PermissionControllerManager;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/permission/PermissionControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$1;->this$0:Landroid/permission/PermissionControllerManager;

    iput-object p7, p0, Landroid/permission/PermissionControllerManager$1;->val$handler:Landroid/os/Handler;

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method protected blacklist getAutoDisconnectTimeoutMs()J
    .locals 2

    invoke-static {}, Landroid/permission/PermissionControllerManager;->-$$Nest$sfgetUNBIND_TIMEOUT_MILLIS()J

    move-result-wide v0

    return-wide v0
.end method

.method protected blacklist getJobHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/permission/PermissionControllerManager$1;->val$handler:Landroid/os/Handler;

    return-object p0
.end method

.method protected blacklist getRequestTimeoutMs()J
    .locals 2

    invoke-static {}, Landroid/permission/PermissionControllerManager;->-$$Nest$sfgetREQUEST_TIMEOUT_MILLIS()J

    move-result-wide v0

    return-wide v0
.end method
