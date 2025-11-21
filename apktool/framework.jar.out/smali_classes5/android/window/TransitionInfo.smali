.class public final Landroid/window/TransitionInfo;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$Change;,
        Landroid/window/TransitionInfo$Root;,
        Landroid/window/TransitionInfo$AnimationOptions;,
        Landroid/window/TransitionInfo$ChangeFlags2;,
        Landroid/window/TransitionInfo$ChangeFlags;,
        Landroid/window/TransitionInfo$TransitionMode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG2_TRANSPARENT:I = 0x1

.field public static final blacklist FLAGS_IS_NON_APP_WINDOW:I = 0x10102

.field public static final blacklist FLAGS_IS_OCCLUDED_NO_ANIMATION:I = 0x48000

.field public static final blacklist FLAG_BACK_GESTURE_ANIMATED:I = 0x20000

.field public static final blacklist FLAG_CONFIG_AT_END:I = 0x400000

.field public static final blacklist FLAG_CROSS_PROFILE_OWNER_THUMBNAIL:I = 0x1000

.field public static final blacklist FLAG_CROSS_PROFILE_WORK_THUMBNAIL:I = 0x2000

.field public static final blacklist FLAG_CUSTOM_DISPLAY_CHANGE_TRANSITION:I = 0x20000000

.field public static final blacklist FLAG_DISPLAY_HAS_ALERT_WINDOWS:I = 0x80

.field public static final blacklist FLAG_EDGE_EXTENSION_RESTRICTION:I = 0x8000000

.field public static final blacklist FLAG_FAST_ANIMATION:I = 0x40000000

.field public static final blacklist FLAG_FILLS_TASK:I = 0x400

.field public static final blacklist FLAG_FIRST_CUSTOM:I = 0x1000000

.field public static final blacklist FLAG_IN_TASK_WITH_EMBEDDED_ACTIVITY:I = 0x200

.field public static final blacklist FLAG_IS_ACTIVITY:I = 0x40

.field public static final blacklist FLAG_IS_BEHIND_STARTING_WINDOW:I = 0x4000

.field public static final blacklist FLAG_IS_DISPLAY:I = 0x20

.field public static final blacklist FLAG_IS_FIXED_PORTRAIT:I = -0x80000000

.field public static final blacklist FLAG_IS_INPUT_METHOD:I = 0x100

.field public static final blacklist FLAG_IS_OCCLUDED:I = 0x8000

.field public static final blacklist FLAG_IS_SYSTEM_WINDOW:I = 0x10000

.field public static final blacklist FLAG_IS_TASK_DISPLAY_AREA:I = 0x800000

.field public static final blacklist FLAG_IS_TRANSIENT_LAUNCH_OVERLAY:I = 0x10000000

.field public static final blacklist FLAG_IS_UNFOLD_POP_OVER:I = 0x4000000

.field public static final blacklist FLAG_IS_VOICE_INTERACTION:I = 0x10

.field public static final blacklist FLAG_IS_WALLPAPER:I = 0x2

.field public static final blacklist FLAG_MOVED_TO_TOP:I = 0x100000

.field public static final blacklist FLAG_NONE:I = 0x0

.field public static final blacklist FLAG_NO_ANIMATION:I = 0x40000

.field public static final blacklist FLAG_SHOW_WALLPAPER:I = 0x1

.field public static final blacklist FLAG_STARTING_WINDOW_TRANSFER_RECIPIENT:I = 0x8

.field public static final blacklist FLAG_SYNC:I = 0x200000

.field public static final blacklist FLAG_TASK_LAUNCHING_BEHIND:I = 0x80000

.field public static final blacklist FLAG_TRANSLUCENT:I = 0x4

.field public static final blacklist FLAG_WILL_IME_SHOWN:I = 0x800

.field private static final blacklist TAG:Ljava/lang/String; = "TransitionInfo"


# instance fields
.field private blacklist mAnimatePendingSplitWithDisplayChange:Z

.field private blacklist mCanMergeAnimation:Z

.field private blacklist mCanTransferAnimation:Z

.field private final blacklist mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDebugId:I

.field private blacklist mFlags:I

.field private blacklist mMergeAsNoAnimation:Z

.field private blacklist mRemoteAppThread:Landroid/app/IApplicationThread;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private final blacklist mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Root;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSeparatedFromCustomDisplayChange:Z

.field private blacklist mShouldAnimateDefaultDisplay:Z

.field private blacklist mTrack:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    iput p1, p0, Landroid/window/TransitionInfo;->mType:I

    iput p2, p0, Landroid/window/TransitionInfo;->mFlags:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    sget-object v2, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    sget-object v0, Landroid/window/TransitionInfo$Root;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mMergeAsNoAnimation:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    :cond_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const-string v1, "SHOW_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const-string v1, "IS_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_3

    const-string v1, "IS_INPUT_METHOD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x4

    const-string v2, ""

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TRANSLUCENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_1

    :cond_6
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "STARTING_WINDOW_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_2

    :cond_8
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_VOICE_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v2

    goto :goto_3

    :cond_a
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_4

    :cond_c
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DISPLAY_HAS_ALERT_WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IN_TASK_WITH_EMBEDDED_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_10

    move-object v1, v2

    goto :goto_6

    :cond_10
    move-object v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FILLS_TASK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_12

    move-object v1, v2

    goto :goto_7

    :cond_12
    move-object v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_BEHIND_STARTING_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_14

    move-object v1, v2

    goto :goto_8

    :cond_14
    move-object v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_OCCLUDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_16

    move-object v1, v2

    goto :goto_9

    :cond_16
    move-object v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FLAG_IS_SYSTEM_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_18

    move-object v1, v2

    goto :goto_a

    :cond_18
    move-object v1, v3

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FLAG_BACK_GESTURE_ANIMATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1a

    move-object v1, v2

    goto :goto_b

    :cond_1a
    move-object v1, v3

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NO_ANIMATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1c

    move-object v1, v2

    goto :goto_c

    :cond_1c
    move-object v1, v3

    :goto_c
    const-string v4, "TASK_LAUNCHING_BEHIND"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1e

    move-object v1, v2

    goto :goto_d

    :cond_1e
    move-object v1, v3

    :goto_d
    const-string v4, "SYNC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_20

    move-object v1, v2

    goto :goto_e

    :cond_20
    move-object v1, v3

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FIRST_CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_22

    move-object v1, v2

    goto :goto_f

    :cond_22
    move-object v1, v3

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CONFIG_AT_END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_24

    move-object v1, v2

    goto :goto_10

    :cond_24
    move-object v1, v3

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MOVE_TO_TOP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_26

    move-object v1, v2

    goto :goto_11

    :cond_26
    move-object v1, v3

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FLAG_IS_TASK_DISPLAY_AREA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_29

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_28

    move-object v1, v2

    goto :goto_12

    :cond_28
    move-object v1, v3

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2a

    move-object v1, v2

    goto :goto_13

    :cond_2a
    move-object v1, v3

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EDGE_EXTENSION_RESTRICTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_2f

    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2c

    move-object v1, v2

    goto :goto_14

    :cond_2c
    move-object v1, v3

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CUSTOM_DISPLAY_CHANGE_TRANSITION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2e

    move-object v1, v2

    goto :goto_15

    :cond_2e
    move-object v1, v3

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FAST_ANIMATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v1, :cond_31

    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_30

    move-object v1, v2

    goto :goto_16

    :cond_30
    move-object v1, v3

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TRANSIENT_LAUNCH_OVERLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_32

    move-object v1, v2

    goto :goto_17

    :cond_32
    move-object v1, v3

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_FIXED_PORTRAIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const/high16 v1, 0x4000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_35

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_34

    goto :goto_18

    :cond_34
    move-object v2, v3

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "IS_UNFOLD_POP_OVER"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    invoke-static {p0}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmConfiguration(Landroid/window/TransitionInfo$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    invoke-static {p0}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmConfiguration(Landroid/window/TransitionInfo$Change;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v3

    :cond_3
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    if-eq v0, v2, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p0

    goto :goto_0

    :cond_7
    return v3
.end method

.method public static blacklist modeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<unknown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CHANGE"

    return-object p0

    :cond_1
    const-string p0, "TO_BACK"

    return-object p0

    :cond_2
    const-string p0, "TO_FRONT"

    return-object p0

    :cond_3
    const-string p0, "CLOSE"

    return-object p0

    :cond_4
    const-string p0, "OPEN"

    return-object p0

    :cond_5
    const-string p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public blacklist addChange(Landroid/window/TransitionInfo$Change;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addRoot(Landroid/window/TransitionInfo$Root;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addRootLeash(ILandroid/view/SurfaceControl;II)V
    .locals 1

    iget-object p0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    new-instance v0, Landroid/window/TransitionInfo$Root;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addRootLeash(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V
    .locals 7

    iget-object p0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    new-instance v0, Landroid/window/TransitionInfo$Root;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist canMergeAnimation()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    return p0
.end method

.method public blacklist canMergeAsNoAnimation()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mMergeAsNoAnimation:Z

    return p0
.end method

.method public blacklist canTransferAnimation()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist findChange(Ljava/util/function/Predicate;)Landroid/window/TransitionInfo$Change;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)",
            "Landroid/window/TransitionInfo$Change;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist findRootIndex(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;
    .locals 2

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TransitionInfo$Change;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getChangeForAppsEdgeActivity()Landroid/window/TransitionInfo$Change;
    .locals 3

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getChanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getDebugId()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    return p0
.end method

.method public blacklist getFlags()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo;->mFlags:I

    return p0
.end method

.method public blacklist getRemoteAppThread()Landroid/app/IApplicationThread;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo;->mRemoteAppThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object p0
.end method

.method public blacklist getRoot(I)Landroid/window/TransitionInfo$Root;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TransitionInfo$Root;

    return-object p0
.end method

.method public blacklist getRootCount()I
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getRootLeash()Landroid/view/SurfaceControl;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "TransitionInfo"

    const-string v2, "Assuming one animation root when there are more."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TransitionInfo$Root;

    invoke-static {p0}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to get a root leash from a no-op transition."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getSplitActivityChangeTransition()Landroid/window/TransitionInfo$Change;
    .locals 3

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getSplitActivityMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTrack()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo;->mTrack:I

    return p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo;->mType:I

    return p0
.end method

.method public blacklist hasChangeTransition()Z
    .locals 1

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasChangesOrSideEffects()Z
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 v0, p0, 0x800

    if-nez v0, :cond_1

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist hasCustomDisplayChangeTransition()Z
    .locals 2

    iget-object p0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isAnimatePendingSplitWithDisplayChange()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mAnimatePendingSplitWithDisplayChange:Z

    return p0
.end method

.method public blacklist isKeyguardGoingAway()Z
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSeparatedFromCustomDisplayChange()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    return p0
.end method

.method public blacklist localRemoteCopy()Landroid/window/TransitionInfo;
    .locals 5

    new-instance v0, Landroid/window/TransitionInfo;

    iget v1, p0, Landroid/window/TransitionInfo;->mType:I

    iget v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionInfo;-><init>(II)V

    iget v1, p0, Landroid/window/TransitionInfo;->mTrack:I

    iput v1, v0, Landroid/window/TransitionInfo;->mTrack:I

    iget v1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    iput v1, v0, Landroid/window/TransitionInfo;->mDebugId:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-static {v4}, Landroid/window/TransitionInfo$Change;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Root;

    invoke-static {v3}, Landroid/window/TransitionInfo$Root;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Root;)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mMergeAsNoAnimation:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mMergeAsNoAnimation:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    iput-object v1, v0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    iput-boolean p0, v0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    :cond_4
    return-object v0
.end method

.method public blacklist releaseAllSurfaces()V
    .locals 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist releaseAnimSurfaces()V
    .locals 4

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    invoke-static {v1, v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$fputmSnapshot(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmReleaseChangeLeashAllowed(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    invoke-static {v1, v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$fputmChangeLeash(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public blacklist setAnimatePendingSplitWithDisplayChange(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mAnimatePendingSplitWithDisplayChange:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/window/TransitionInfo;->mAnimatePendingSplitWithDisplayChange:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAnimatePendingSplitWithDisplayChange: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist setCanMergeAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    return-void
.end method

.method public blacklist setCanTransferAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    return-void
.end method

.method public blacklist setDebugId(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo;->mFlags:I

    return-void
.end method

.method public blacklist setMergeAsNoAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mMergeAsNoAnimation:Z

    return-void
.end method

.method public blacklist setRemoteAppThread(Landroid/app/IApplicationThread;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo;->mRemoteAppThread:Landroid/app/IApplicationThread;

    return-void
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public blacklist setSeparatedFromCustomDisplayChange(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setSeparatedFromCustomDisplayChange: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist setShouldAnimateDefaultDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    return-void
.end method

.method public blacklist setTrack(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo;->mTrack:I

    return-void
.end method

.method public blacklist setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist shouldAnimateDefaultDisplay()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, ""

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const-string v4, "\n"

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " t="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-static {v3}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " f=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trk="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " r=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :goto_3
    iget-object v4, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x2c

    if-ge v3, v4, :cond_5

    if-lez v3, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Root;

    invoke-static {v4}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Root;

    invoke-static {v4}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmOffset(Landroid/window/TransitionInfo$Root;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const-string v3, "] c=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v3, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    if-lez v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v3, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    if-eqz v1, :cond_8

    const-string v1, "] [merge=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mMergeAsNoAnimation:Z

    if-eqz v1, :cond_9

    const-string v1, "] [mergeAsNoAnim=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    if-eqz v1, :cond_a

    const-string v1, "] [transfer=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "] [remote="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_c

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    if-eqz p0, :cond_c

    const-string p0, "] [shouldAnimDefault=true"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mMergeAsNoAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanTransferAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Landroid/window/TransitionInfo;->mShouldAnimateDefaultDisplay:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_2
    return-void
.end method
