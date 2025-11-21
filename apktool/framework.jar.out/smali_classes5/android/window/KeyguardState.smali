.class public final Landroid/window/KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/KeyguardState$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/KeyguardState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAodShowing:Z

.field private final blacklist mKeyguardShowing:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/KeyguardState$1;

    invoke-direct {v0}, Landroid/window/KeyguardState$1;-><init>()V

    sput-object v0, Landroid/window/KeyguardState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/KeyguardState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/KeyguardState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    iput-boolean p2, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/window/KeyguardState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/window/KeyguardState;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/window/KeyguardState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/window/KeyguardState;

    iget-boolean v0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    iget-boolean v2, p1, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    if-ne v0, v2, :cond_0

    iget-boolean p0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    iget-boolean p1, p1, Landroid/window/KeyguardState;->mAodShowing:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public blacklist getAodShowing()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    return p0
.end method

.method public blacklist getKeyguardShowing()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-boolean v0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyguardState{ keyguardShowing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
