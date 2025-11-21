.class Landroid/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/RadioGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2}, Landroid/widget/RadioGroup;->-$$Nest$fgetmProtectFromCheckedChange(Landroid/widget/RadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/widget/RadioGroup;->-$$Nest$fputmProtectFromCheckedChange(Landroid/widget/RadioGroup;Z)V

    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2}, Landroid/widget/RadioGroup;->-$$Nest$fgetmCheckedId(Landroid/widget/RadioGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2}, Landroid/widget/RadioGroup;->-$$Nest$fgetmCheckedId(Landroid/widget/RadioGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Landroid/widget/RadioGroup;->-$$Nest$msetCheckedStateForView(Landroid/widget/RadioGroup;IZ)V

    :cond_1
    iget-object p2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p2, v1}, Landroid/widget/RadioGroup;->-$$Nest$fputmProtectFromCheckedChange(Landroid/widget/RadioGroup;Z)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    iget-object p0, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-static {p0, p1}, Landroid/widget/RadioGroup;->-$$Nest$msetCheckedId(Landroid/widget/RadioGroup;I)V

    return-void
.end method
