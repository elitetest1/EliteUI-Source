.class public final Landroid/media/quality/ParameterCapability;
.super Ljava/lang/Object;
.source "ParameterCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/ParameterCapability$Capability;,
        Landroid/media/quality/ParameterCapability$ParameterType;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_DEFAULT:Ljava/lang/String; = "default"

.field public static final whitelist CAPABILITY_ENUM:Ljava/lang/String; = "enum"

.field public static final whitelist CAPABILITY_MAX:Ljava/lang/String; = "max"

.field public static final whitelist CAPABILITY_MIN:Ljava/lang/String; = "min"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_DOUBLE:I = 0x3

.field public static final whitelist TYPE_INT:I = 0x1

.field public static final whitelist TYPE_LONG:I = 0x2

.field public static final whitelist TYPE_NONE:I = 0x0

.field public static final whitelist TYPE_STRING:I = 0x4


# instance fields
.field private final blacklist mCaps:Landroid/os/Bundle;

.field private final blacklist mIsSupported:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/quality/ParameterCapability$1;

    invoke-direct {v0}, Landroid/media/quality/ParameterCapability$1;-><init>()V

    sput-object v0, Landroid/media/quality/ParameterCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/ParameterCapability;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    iput p3, p0, Landroid/media/quality/ParameterCapability;->mType:I

    iput-object p4, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCapabilities()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getParameterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getParameterType()I
    .locals 0

    iget p0, p0, Landroid/media/quality/ParameterCapability;->mType:I

    return p0
.end method

.method public whitelist isSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/media/quality/ParameterCapability;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
