.class public final Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionAidlRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

.field private final blacklist mRequestTime:J

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    iput-wide p4, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestTime:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCallingPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    return-object p0
.end method

.method public blacklist getRequestTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestTime:J

    return-wide v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
