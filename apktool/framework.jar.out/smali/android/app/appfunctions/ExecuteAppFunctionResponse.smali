.class public final Landroid/app/appfunctions/ExecuteAppFunctionResponse;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PROPERTY_RETURN_VALUE:Ljava/lang/String; = "androidAppfunctionsReturnValue"


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;)V
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;-><init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    invoke-direct {v0, p1}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/app/appsearch/GenericDocument;)V

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getResponseDataSize()I
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getDataSize()I

    move-result v0

    iget-object p0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->getSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist getResultDocument()Landroid/app/appsearch/GenericDocument;
    .locals 0

    iget-object p0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {p0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
