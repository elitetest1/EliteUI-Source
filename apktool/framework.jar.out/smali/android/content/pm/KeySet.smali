.class public Landroid/content/pm/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o token:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .locals 0

    invoke-static {p0}, Landroid/content/pm/KeySet;->readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/KeySet$1;

    invoke-direct {v0}, Landroid/content/pm/KeySet$1;-><init>()V

    sput-object v0, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "null value for KeySet IBinder token"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    new-instance v0, Landroid/content/pm/KeySet;

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/content/pm/KeySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/content/pm/KeySet;

    iget-object p0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public greylist-max-o getToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
