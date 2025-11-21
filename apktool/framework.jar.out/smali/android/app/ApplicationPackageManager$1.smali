.class Landroid/app/ApplicationPackageManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-static {p1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->-$$Nest$fgetname(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->-$$Nest$fgetversion(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)I

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
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

    check-cast p1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager$1;->recompute(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
