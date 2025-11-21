.class Lcom/android/internal/policy/DecorView$10;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->setKnoxBadgePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->access$100(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->access$200(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_hint"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->access$300(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_detail_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "task_bar"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget-object v6, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v6, v0, v3, v5}, Lcom/android/internal/policy/DecorView;->-$$Nest$mshouldHideProfileBadge(Lcom/android/internal/policy/DecorView;ZZI)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {p0}, Lcom/android/internal/policy/DecorView;->-$$Nest$mhideKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWm(Lcom/android/internal/policy/DecorView;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v3

    const/4 v6, 0x6

    if-ne v3, v6, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    if-ne v0, v1, :cond_7

    move v6, v1

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    const/4 v7, 0x3

    if-ne v0, v7, :cond_8

    move v0, v1

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    if-eqz v5, :cond_a

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v5, :cond_9

    goto :goto_8

    :cond_9
    move v1, v2

    :cond_a
    :goto_8
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmIsDexEnabled(Lcom/android/internal/policy/DecorView;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v7, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v8, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    int-to-float v7, v7

    int-to-float v5, v5

    div-float/2addr v7, v5

    invoke-static {v8, v7}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmDensityRatio(Lcom/android/internal/policy/DecorView;F)V

    :cond_b
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v7}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v7, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v7}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v8}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v9, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;Landroid/graphics/Insets;)V

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfputsKnoxBadgeRightCutout(I)V

    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v8}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v8}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Insets;->left:I

    iget-object v9, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v9}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Insets;->right:I

    iget-object v10, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v10}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Insets;->bottom:I

    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/DecorView;->getNavBarSizeForBadge(III)I

    move-result v8

    goto :goto_9

    :cond_d
    move v8, v2

    :goto_9
    iget-object v9, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v9}, Lcom/android/internal/policy/DecorView;->-$$Nest$maddKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    sub-int/2addr v2, v7

    sub-int/2addr v2, v8

    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    invoke-static {}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfgetsKnoxBadgeRightCutout()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    if-eqz v0, :cond_12

    if-eqz v4, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v7

    sub-int/2addr v4, v8

    invoke-static {v0, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_a

    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    add-int/2addr v4, v8

    invoke-static {v0, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v7

    invoke-static {v0, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    :goto_a
    if-eqz v3, :cond_11

    const/16 v0, 0x20

    if-ne v1, v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmReverseKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_12
    if-eqz v6, :cond_15

    if-eqz v4, :cond_13

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    sub-int/2addr v2, v7

    sub-int/2addr v2, v8

    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_b

    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    sub-int/2addr v2, v5

    sub-int/2addr v2, v8

    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    sub-int/2addr v2, v7

    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    :goto_b
    if-eqz v3, :cond_14

    const/16 v0, 0x8

    if-ne v1, v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    sub-int/2addr v1, v7

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_c
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLeft(I)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTop(I)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setRight(I)V

    iget-object p0, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {p0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBottom(I)V

    return-void
.end method
