.class Landroid/view/SurfaceControlRegistry$1;
.super Ljava/lang/Thread;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/SurfaceControlRegistry;->add(Landroid/view/SurfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callStack:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceControlRegistry;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/view/SurfaceControlRegistry$1;->val$callStack:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceControlRegistry#add, Max of insets leash"

    iget-object p0, p0, Landroid/view/SurfaceControlRegistry$1;->val$callStack:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
