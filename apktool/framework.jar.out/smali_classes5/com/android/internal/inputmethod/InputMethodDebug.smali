.class public final Lcom/android/internal/inputmethod/InputMethodDebug;
.super Ljava/lang/Object;
.source "InputMethodDebug.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpViewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",focus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",windowFocus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",window="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",displayId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",temporaryDetach="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",hasImeFocus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->hasImeFocus()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist handwritingGestureTypeFlagsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1

    const-string v1, "SELECT_RANGE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_4

    const-string v1, "DELETE_RANGE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_5

    const-string v1, "REMOVE_SPACE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_5
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    const-string p0, "JOIN_OR_SPLIT"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6
    const-string p0, "(none)"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist softInputDisplayReasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "FORCE_HIDE_SOFT_INPUT"

    return-object p0

    :pswitch_2
    const-string p0, "HIDE_SCREEN_OFF_SECURE_LOCK_SCREEN_STATE"

    return-object p0

    :pswitch_3
    const-string p0, "HIDE_SETTINGS_BUTTON_CLICKED"

    return-object p0

    :pswitch_4
    const-string p0, "HIDE_STATUS_BAR_ANIMATION"

    return-object p0

    :pswitch_5
    const-string p0, "HIDE_HW_KEYBOARD_CONNECTED"

    return-object p0

    :pswitch_6
    const-string p0, "IME_REQUESTED_CHANGED_LISTENER"

    return-object p0

    :pswitch_7
    const-string p0, "HIDE_WINDOW_LOST_FOCUS"

    return-object p0

    :pswitch_8
    const-string p0, "HIDE_INPUT_TARGET_CHANGED"

    return-object p0

    :pswitch_9
    const-string p0, "SHOW_INPUT_TARGET_CHANGED"

    return-object p0

    :pswitch_a
    const-string p0, "CONTROL_WINDOW_INSETS_ANIMATION"

    return-object p0

    :pswitch_b
    const-string p0, "SHOW_SOFT_INPUT_IMM_DEPRECATION"

    return-object p0

    :pswitch_c
    const-string p0, "SHOW_SOFT_INPUT_IME_TOGGLE_SOFT_INPUT"

    return-object p0

    :pswitch_d
    const-string p0, "HIDE_SOFT_INPUT_REQUEST_HIDE_WITH_CONTROL"

    return-object p0

    :pswitch_e
    const-string p0, "HIDE_SOFT_INPUT_ON_ANIMATION_STATE_CHANGED"

    return-object p0

    :pswitch_f
    const-string p0, "UNBIND_CURRENT_METHOD"

    return-object p0

    :pswitch_10
    const-string p0, "DISPLAY_CONTROLS_CHANGED"

    return-object p0

    :pswitch_11
    const-string p0, "DISPLAY_INSETS_CHANGED"

    return-object p0

    :pswitch_12
    const-string p0, "DISPLAY_CONFIGURATION_CHANGED"

    return-object p0

    :pswitch_13
    const-string p0, "CONTROLS_CHANGED"

    return-object p0

    :pswitch_14
    const-string p0, "UPDATE_CANDIDATES_VIEW_VISIBILITY"

    return-object p0

    :pswitch_15
    const-string p0, "RESET_NEW_CONFIGURATION"

    return-object p0

    :pswitch_16
    const-string p0, "HIDE_WINDOW_LEGACY_DIRECT"

    return-object p0

    :pswitch_17
    const-string p0, "SHOW_WINDOW_LEGACY_DIRECT"

    return-object p0

    :pswitch_18
    const-string p0, "HIDE_SOFT_INPUT_LEGACY_DIRECT"

    return-object p0

    :pswitch_19
    const-string p0, "SHOW_SOFT_INPUT_LEGACY_DIRECT"

    return-object p0

    :pswitch_1a
    const-string p0, "HIDE_SOFT_INPUT_FROM_VIEW"

    return-object p0

    :pswitch_1b
    const-string p0, "HIDE_SOFT_INPUT_CLOSE_CURRENT_SESSION"

    return-object p0

    :pswitch_1c
    const-string p0, "HIDE_WHEN_INPUT_TARGET_INVISIBLE"

    return-object p0

    :pswitch_1d
    const-string p0, "REMOVE_IME_SCREENSHOT_FROM_IMMS"

    return-object p0

    :pswitch_1e
    const-string p0, "SHOW_IME_SCREENSHOT_FROM_IMMS"

    return-object p0

    :pswitch_1f
    const-string p0, "HIDE_WINDOW_GAINED_FOCUS_WITHOUT_EDITOR"

    return-object p0

    :pswitch_20
    const-string p0, "HIDE_SOFT_INPUT_IMM_DEPRECATION"

    return-object p0

    :pswitch_21
    const-string p0, "HIDE_SOFT_INPUT_EXTRACT_INPUT_CHANGED"

    return-object p0

    :pswitch_22
    const-string p0, "HIDE_SOFT_INPUT_IME_TOGGLE_SOFT_INPUT"

    return-object p0

    :pswitch_23
    const-string p0, "HIDE_SOFT_INPUT_BY_BACK_KEY"

    return-object p0

    :pswitch_24
    const-string p0, "HIDE_SOFT_INPUT_BY_INSETS_API"

    return-object p0

    :pswitch_25
    const-string p0, "HIDE_DISPLAY_IME_POLICY_HIDE"

    return-object p0

    :pswitch_26
    const-string p0, "SHOW_SOFT_INPUT_BY_INSETS_API"

    return-object p0

    :pswitch_27
    const-string p0, "HIDE_TOGGLE_SOFT_INPUT"

    return-object p0

    :pswitch_28
    const-string p0, "SHOW_TOGGLE_SOFT_INPUT"

    return-object p0

    :pswitch_29
    const-string p0, "SHOW_RESTORE_IME_VISIBILITY"

    return-object p0

    :pswitch_2a
    const-string p0, "HIDE_REMOVE_CLIENT"

    return-object p0

    :pswitch_2b
    const-string p0, "HIDE_SAME_WINDOW_FOCUSED_WITHOUT_EDITOR"

    return-object p0

    :pswitch_2c
    const-string p0, "HIDE_BUBBLES"

    return-object p0

    :pswitch_2d
    const-string p0, "HIDE_RECENTS_ANIMATION"

    return-object p0

    :pswitch_2e
    const-string p0, "HIDE_DOCKED_STACK_ATTACHED"

    return-object p0

    :pswitch_2f
    const-string p0, "HIDE_POWER_BUTTON_GO_HOME"

    return-object p0

    :pswitch_30
    const-string p0, "HIDE_SETTINGS_ON_CHANGE"

    return-object p0

    :pswitch_31
    const-string p0, "HIDE_RESET_SHELL_COMMAND"

    return-object p0

    :pswitch_32
    const-string p0, "HIDE_ALWAYS_HIDDEN_STATE"

    return-object p0

    :pswitch_33
    const-string p0, "HIDE_STATE_HIDDEN_FORWARD_NAV"

    return-object p0

    :pswitch_34
    const-string p0, "HIDE_UNSPECIFIED_WINDOW"

    return-object p0

    :pswitch_35
    const-string p0, "HIDE_INVALID_USER"

    return-object p0

    :pswitch_36
    const-string p0, "HIDE_SWITCH_USER"

    return-object p0

    :pswitch_37
    const-string p0, "SHOW_SETTINGS_ON_CHANGE"

    return-object p0

    :pswitch_38
    const-string p0, "SHOW_STATE_ALWAYS_VISIBLE"

    return-object p0

    :pswitch_39
    const-string p0, "SHOW_STATE_VISIBLE_FORWARD_NAV"

    return-object p0

    :pswitch_3a
    const-string p0, "SHOW_AUTO_EDITOR_FORWARD_NAV"

    return-object p0

    :pswitch_3b
    const-string p0, "HIDE_SOFT_INPUT_FROM_IME"

    return-object p0

    :pswitch_3c
    const-string p0, "HIDE_SOFT_INPUT"

    return-object p0

    :pswitch_3d
    const-string p0, "SHOW_SOFT_INPUT_FROM_IME"

    return-object p0

    :pswitch_3e
    const-string p0, "ATTACH_NEW_INPUT"

    return-object p0

    :pswitch_3f
    const-string p0, "SHOW_SOFT_INPUT"

    return-object p0

    :pswitch_40
    const-string p0, "NOT_SET"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist softInputModeToString(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0xf

    and-int/lit16 v2, p0, 0xf0

    and-int/lit16 p0, p0, 0x100

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v4, ")"

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "STATE_UNKNOWN("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_1
    const-string v1, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_2
    const-string v1, "STATE_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_3
    const-string v1, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_4
    const-string v1, "STATE_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_5
    const-string v1, "STATE_UNCHANGED"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_6
    const-string v1, "STATE_UNSPECIFIED"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_1
    if-eqz v2, :cond_a

    const/16 v1, 0x10

    if-eq v2, v1, :cond_9

    const/16 v1, 0x20

    if-eq v2, v1, :cond_8

    const/16 v1, 0x30

    if-eq v2, v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ADJUST_UNKNOWN("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_7
    const-string v1, "ADJUST_NOTHING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_8
    const-string v1, "ADJUST_PAN"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_9
    const-string v1, "ADJUST_RESIZE"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_a
    const-string v1, "ADJUST_UNSPECIFIED"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :goto_2
    if-eqz p0, :cond_b

    const-string p0, "IS_FORWARD_NAVIGATION"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_b
    const-string p0, "(none)"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist startInputFlagsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "VIEW_HAS_FOCUS"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "IS_TEXT_EDITOR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    const-string p0, "INITIAL_CONNECTION"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    const-string p0, "(none)"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist startInputReasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "BOUND_ACCESSIBILITY_SESSION_TO_IMMS"

    return-object p0

    :pswitch_2
    const-string p0, "SESSION_CREATED_BY_IME"

    return-object p0

    :pswitch_3
    const-string p0, "DEACTIVATED_BY_IMMS"

    return-object p0

    :pswitch_4
    const-string p0, "ACTIVATED_BY_IMMS"

    return-object p0

    :pswitch_5
    const-string p0, "UNBOUND_FROM_IMMS"

    return-object p0

    :pswitch_6
    const-string p0, "BOUND_TO_IMMS"

    return-object p0

    :pswitch_7
    const-string p0, "CHECK_FOCUS"

    return-object p0

    :pswitch_8
    const-string p0, "APP_CALLED_RESTART_INPUT_API"

    return-object p0

    :pswitch_9
    const-string p0, "SCHEDULED_CHECK_FOCUS"

    return-object p0

    :pswitch_a
    const-string p0, "WINDOW_FOCUS_GAIN_REPORT_ONLY"

    return-object p0

    :pswitch_b
    const-string p0, "WINDOW_FOCUS_GAIN"

    return-object p0

    :pswitch_c
    const-string p0, "UNSPECIFIED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist unbindReasonToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "SWITCH_USER"

    return-object p0

    :pswitch_1
    const-string p0, "SWITCH_IME_FAILED"

    return-object p0

    :pswitch_2
    const-string p0, "NO_IME"

    return-object p0

    :pswitch_3
    const-string p0, "DISCONNECT_IME"

    return-object p0

    :pswitch_4
    const-string p0, "SWITCH_IME"

    return-object p0

    :pswitch_5
    const-string p0, "SWITCH_CLIENT"

    return-object p0

    :pswitch_6
    const-string p0, "UNSPECIFIED"

    return-object p0

    :cond_0
    const-string p0, "EXIT_DEX_DESKTOP_MODE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
