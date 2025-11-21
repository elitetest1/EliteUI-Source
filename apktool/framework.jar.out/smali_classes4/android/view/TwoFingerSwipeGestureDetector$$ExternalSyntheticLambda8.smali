.class public final synthetic Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/TwoFingerSwipeGestureDetector;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/TwoFingerSwipeGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda8;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/view/TwoFingerSwipeGestureDetector$$ExternalSyntheticLambda8;->f$0:Landroid/view/TwoFingerSwipeGestureDetector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->excludeRegionContains(FF)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
