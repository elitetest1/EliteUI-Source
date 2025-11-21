.class Landroid/permission/PermissionManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/permission/PermissionManager$PermissionQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/permission/PermissionManager$PermissionQuery;)Ljava/lang/Integer;
    .locals 2

    iget-object p0, p1, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v0, p1, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    iget v1, p1, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    iget p1, p1, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {p0, v0, v1, p1}, Landroid/permission/PermissionManager;->-$$Nest$smcheckPermissionUncached(Ljava/lang/String;III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/permission/PermissionManager$PermissionQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$1;->recompute(Landroid/permission/PermissionManager$PermissionQuery;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
