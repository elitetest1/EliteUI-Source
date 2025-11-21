.class Landroid/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ForwardingListener;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ForwardingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object p0, p0, Landroid/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/widget/ForwardingListener;

    invoke-static {p0}, Landroid/widget/ForwardingListener;->-$$Nest$fgetmSrc(Landroid/widget/ForwardingListener;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
