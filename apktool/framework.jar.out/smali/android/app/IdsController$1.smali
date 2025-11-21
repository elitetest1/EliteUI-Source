.class Landroid/app/IdsController$1;
.super Ljava/lang/Object;
.source "IdsController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/IdsController;->registerLayoutListener(Landroid/view/View;Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/IdsController;


# direct methods
.method constructor blacklist <init>(Landroid/app/IdsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/IdsController$1;->this$0:Landroid/app/IdsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .locals 1

    iget-object p0, p0, Landroid/app/IdsController$1;->this$0:Landroid/app/IdsController;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/IdsController;->uiUpdated(I)V

    return-void
.end method
