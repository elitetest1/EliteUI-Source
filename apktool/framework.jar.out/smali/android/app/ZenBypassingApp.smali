.class public final Landroid/app/ZenBypassingApp;
.super Ljava/lang/Object;
.source "ZenBypassingApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ZenBypassingApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllChannelsBypass:Z

.field private blacklist mPkg:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ZenBypassingApp$1;

    invoke-direct {v0}, Landroid/app/ZenBypassingApp$1;-><init>()V

    sput-object v0, Landroid/app/ZenBypassingApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist doAllChannelsBypass()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/ZenBypassingApp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/app/ZenBypassingApp;

    iget-boolean v1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    iget-boolean v3, p1, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getPkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    iget-boolean p0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

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

    const-string v1, "ZenBypassingApp{mPkg=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mAllChannelsBypass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
