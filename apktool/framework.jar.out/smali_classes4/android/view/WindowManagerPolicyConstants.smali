.class public interface abstract Landroid/view/WindowManagerPolicyConstants;
.super Ljava/lang/Object;
.source "WindowManagerPolicyConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicyConstants$OnReason;,
        Landroid/view/WindowManagerPolicyConstants$OffReason;,
        Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final greylist-max-o APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field public static final greylist-max-o APPLICATION_LAYER:I = 0x2

.field public static final greylist-max-o APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field public static final greylist-max-o APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field public static final greylist-max-o APPLICATION_PANEL_SUBLAYER:I = 0x1

.field public static final greylist-max-o APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field public static final blacklist EXTRA_FROM_BRIGHTNESS_KEY:Ljava/lang/String; = "android.intent.extra.FROM_BRIGHTNESS_KEY"

.field public static final greylist-max-o EXTRA_FROM_HOME_KEY:Ljava/lang/String; = "android.intent.extra.FROM_HOME_KEY"

.field public static final greylist-max-o EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final blacklist EXTRA_START_REASON:Ljava/lang/String; = "android.intent.extra.EXTRA_START_REASON"

.field public static final greylist-max-o FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final greylist-max-o FLAG_FILTERED:I = 0x4000000

.field public static final greylist-max-o FLAG_INJECTED:I = 0x1000000

.field public static final blacklist FLAG_INJECTED_FROM_ACCESSIBILITY:I = 0x20000

.field public static final blacklist FLAG_INJECTED_FROM_ACCESSIBILITY_TOOL:I = 0x80000

.field public static final greylist-max-o FLAG_INTERACTIVE:I = 0x20000000

.field public static final blacklist FLAG_KEY_GESTURE_COMBINATION_TRIGGERED:I = 0x100000

.field public static final blacklist FLAG_KEY_GESTURE_TRIGGERED:I = 0x40000

.field public static final greylist-max-o FLAG_PASS_TO_USER:I = 0x40000000

.field public static final greylist-max-o FLAG_TRUSTED:I = 0x2000000

.field public static final greylist-max-o FLAG_VIRTUAL:I = 0x2

.field public static final greylist-max-o FLAG_WAKE:I = 0x1

.field public static final greylist-max-o KEYGUARD_GOING_AWAY_FLAG_NO_WINDOW_ANIMATIONS:I = 0x2

.field public static final blacklist KEYGUARD_GOING_AWAY_FLAG_SUBTLE_WINDOW_ANIMATIONS:I = 0x8

.field public static final blacklist KEYGUARD_GOING_AWAY_FLAG_TO_LAUNCHER_CLEAR_SNAPSHOT:I = 0x10

.field public static final greylist-max-o KEYGUARD_GOING_AWAY_FLAG_TO_SHADE:I = 0x1

.field public static final blacklist KEYGUARD_GOING_AWAY_FLAG_UNLOCK_BY_FINGERPRINT:I = 0x200

.field public static final blacklist KEYGUARD_GOING_AWAY_FLAG_UNLOCK_BY_UNFOLDING:I = 0x20

.field public static final blacklist KEYGUARD_GOING_AWAY_FLAG_WAKE_AND_UNLOCK:I = 0x100

.field public static final greylist-max-o KEYGUARD_GOING_AWAY_FLAG_WITH_WALLPAPER:I = 0x4

.field public static final blacklist LAYER_OFFSET_THUMBNAIL:I = 0x4

.field public static final greylist-max-o NAV_BAR_BOTTOM:I = 0x4

.field public static final blacklist NAV_BAR_INVALID:I = -0x1

.field public static final greylist-max-o NAV_BAR_LEFT:I = 0x1

.field public static final blacklist NAV_BAR_MODE_2BUTTON:I = 0x1

.field public static final blacklist NAV_BAR_MODE_2BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.twobutton"

.field public static final blacklist NAV_BAR_MODE_3BUTTON:I = 0x0

.field public static final blacklist NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final blacklist NAV_BAR_MODE_GESTURAL:I = 0x2

.field public static final blacklist NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final greylist-max-o NAV_BAR_RIGHT:I = 0x2

.field public static final blacklist NAV_BAR_TOP:I = 0x8

.field public static final greylist-max-o OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final blacklist OFF_BECAUSE_OF_FOLD:I = 0x4

.field public static final blacklist OFF_BECAUSE_OF_LID_SWITCH:I = 0x4

.field public static final greylist-max-o OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final greylist-max-o OFF_BECAUSE_OF_USER:I = 0x2

.field public static final blacklist ON_BECAUSE_OF_APPLICATION:I = 0x2

.field public static final blacklist ON_BECAUSE_OF_UNKNOWN:I = 0x3

.field public static final blacklist ON_BECAUSE_OF_USER:I = 0x1

.field public static final blacklist POLICY_FLAG_TOUCHSCREEN_DEVICE:I = 0x800

.field public static final greylist-max-o PRESENCE_EXTERNAL:I = 0x2

.field public static final greylist-max-o PRESENCE_INTERNAL:I = 0x1

.field public static final blacklist SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field public static final blacklist STRICT_MODE_LAYER:I = 0xf6950

.field public static final blacklist TYPE_LAYER_MULTIPLIER:I = 0x2710

.field public static final blacklist TYPE_LAYER_OFFSET:I = 0x3e8

.field public static final blacklist WATERMARK_LAYER:I = 0xf4240

.field public static final blacklist WINDOW_FREEZE_LAYER:I = 0x1e8480

.field public static final blacklist WINDOW_LAYER_MULTIPLIER:I = 0x5


# direct methods
.method public static greylist-max-o offReasonToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "OFF_BECAUSE_OF_FOLD"

    return-object p0

    :cond_1
    const-string p0, "OFF_BECAUSE_OF_TIMEOUT"

    return-object p0

    :cond_2
    const-string p0, "OFF_BECAUSE_OF_USER"

    return-object p0

    :cond_3
    const-string p0, "OFF_BECAUSE_OF_ADMIN"

    return-object p0
.end method

.method public static blacklist onReasonToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ON_BECAUSE_OF_UNKNOWN"

    return-object p0

    :cond_1
    const-string p0, "ON_BECAUSE_OF_APPLICATION"

    return-object p0

    :cond_2
    const-string p0, "ON_BECAUSE_OF_USER"

    return-object p0
.end method

.method public static blacklist translateSleepReasonToOffReason(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v0
.end method

.method public static blacklist translateWakeReasonToOnReason(I)I
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x3

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_0
    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
