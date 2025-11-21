.class Landroid/widget/ScrollView$DifferentialFlingTarget;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DifferentialFlingTarget"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ScrollView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView$DifferentialFlingTarget;-><init>(Landroid/widget/ScrollView;)V

    return-void
.end method


# virtual methods
.method public blacklist getScaledScrollFactor()F
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    invoke-static {p0}, Landroid/widget/ScrollView;->-$$Nest$fgetmVerticalScrollFactor(Landroid/widget/ScrollView;)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public blacklist startDifferentialMotionFling(F)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ScrollView$DifferentialFlingTarget;->stopDifferentialMotionFling()V

    iget-object p0, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist stopDifferentialMotionFling()V
    .locals 0

    iget-object p0, p0, Landroid/widget/ScrollView$DifferentialFlingTarget;->this$0:Landroid/widget/ScrollView;

    invoke-static {p0}, Landroid/widget/ScrollView;->-$$Nest$fgetmScroller(Landroid/widget/ScrollView;)Landroid/widget/OverScroller;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method
