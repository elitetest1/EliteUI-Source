.class public final Lcom/android/internal/compat/OverrideAllowedState;
.super Ljava/lang/Object;
.source "OverrideAllowedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/OverrideAllowedState$State;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/OverrideAllowedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFERRED_VERIFICATION:I = 0x4

.field public static final blacklist DISABLED_NON_TARGET_SDK:I = 0x2

.field public static final blacklist DISABLED_NOT_DEBUGGABLE:I = 0x1

.field public static final blacklist DISABLED_TARGET_SDK_TOO_HIGH:I = 0x3

.field public static final blacklist LOGGING_ONLY_CHANGE:I = 0x5

.field public static final blacklist PLATFORM_TOO_OLD:I = 0x6


# instance fields
.field public final blacklist appTargetSdk:I

.field public final blacklist changeIdTargetSdk:I

.field public final blacklist state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState$1;

    invoke-direct {v0}, Lcom/android/internal/compat/OverrideAllowedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/OverrideAllowedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    iput p2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    iput p3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/OverrideAllowedState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist stateName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "PLATFORM_TOO_OLD"

    return-object p0

    :pswitch_1
    const-string p0, "LOGGING_ONLY_CHANGE"

    return-object p0

    :pswitch_2
    const-string p0, "DEFERRED_VERIFICATION"

    return-object p0

    :pswitch_3
    const-string p0, "DISABLED_TARGET_SDK_TOO_HIGH"

    return-object p0

    :pswitch_4
    const-string p0, "DISABLED_NON_TARGET_SDK"

    return-object p0

    :pswitch_5
    const-string p0, "DISABLED_NOT_DEBUGGABLE"

    return-object p0

    :pswitch_6
    const-string p0, "ALLOWED"

    return-object p0

    nop

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


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist enforce(JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot override %1$d for %2$s because the change\'s targetSdk threshold (%3$d) is above the platform sdk."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot override %1$d because it is marked as a logging-only change."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot override %1$d for %2$s because the app\'s targetSdk (%3$d) is above the change\'s targetSdk threshold (%4$d)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot override a default enabled/disabled change on a user build."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot override a change on a non-debuggable app and user build."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/internal/compat/OverrideAllowedState;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/android/internal/compat/OverrideAllowedState;

    iget v2, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    iget v3, p1, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    iget v3, p1, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    iget p1, p1, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OverrideAllowedState(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/compat/OverrideAllowedState;->stateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; appTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; changeIdTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
