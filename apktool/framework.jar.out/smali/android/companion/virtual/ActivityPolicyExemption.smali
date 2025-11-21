.class public final Landroid/companion/virtual/ActivityPolicyExemption;
.super Ljava/lang/Object;
.source "ActivityPolicyExemption.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/ActivityPolicyExemption$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/ActivityPolicyExemption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mDisplayId:I

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption$1;

    invoke-direct {v0}, Landroid/companion/virtual/ActivityPolicyExemption$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/ActivityPolicyExemption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mPackageName:Ljava/lang/String;

    iput p3, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mDisplayId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/companion/virtual/ActivityPolicyExemption-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/ActivityPolicyExemption;-><init>(Landroid/content/ComponentName;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mDisplayId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/ActivityPolicyExemption-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/ActivityPolicyExemption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist getDisplayId()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mDisplayId:I

    return p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p0, p0, Landroid/companion/virtual/ActivityPolicyExemption;->mDisplayId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
