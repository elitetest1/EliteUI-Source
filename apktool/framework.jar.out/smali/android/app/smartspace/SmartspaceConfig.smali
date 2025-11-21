.class public final Landroid/app/smartspace/SmartspaceConfig;
.super Ljava/lang/Object;
.source "SmartspaceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/SmartspaceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSmartspaceTargetCount:I

.field private final blacklist mUiSurface:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/smartspace/SmartspaceConfig$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceConfig$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceConfig;->mUiSurface:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceConfig;->mSmartspaceTargetCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceConfig;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/smartspace/SmartspaceConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/smartspace/SmartspaceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceConfig;->mUiSurface:Ljava/lang/String;

    iput p2, p0, Landroid/app/smartspace/SmartspaceConfig;->mSmartspaceTargetCount:I

    iput-object p3, p0, Landroid/app/smartspace/SmartspaceConfig;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/smartspace/SmartspaceConfig;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/smartspace/SmartspaceConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/smartspace/SmartspaceConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/app/smartspace/SmartspaceConfig;

    iget v2, p0, Landroid/app/smartspace/SmartspaceConfig;->mSmartspaceTargetCount:I

    iget v3, p1, Landroid/app/smartspace/SmartspaceConfig;->mSmartspaceTargetCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceConfig;->mUiSurface:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceConfig;->mUiSurface:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceConfig;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceConfig;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceConfig;->mExtras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/app/smartspace/SmartspaceConfig;->mExtras:Landroid/os/Bundle;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceConfig;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceConfig;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSmartspaceTargetCount()I
    .locals 0

    iget p0, p0, Landroid/app/smartspace/SmartspaceConfig;->mSmartspaceTargetCount:I

    return p0
.end method

.method public whitelist getUiSurface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceConfig;->mUiSurface:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/app/smartspace/SmartspaceConfig;->mSmartspaceTargetCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceConfig;->mUiSurface:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceConfig;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceConfig;->mExtras:Landroid/os/Bundle;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/smartspace/SmartspaceConfig;->mUiSurface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/smartspace/SmartspaceConfig;->mSmartspaceTargetCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/smartspace/SmartspaceConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceConfig;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
