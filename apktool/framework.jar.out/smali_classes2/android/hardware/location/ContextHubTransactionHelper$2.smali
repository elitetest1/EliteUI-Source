.class Landroid/hardware/location/ContextHubTransactionHelper$2;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubTransactionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$transaction:Landroid/hardware/location/ContextHubTransaction;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/ContextHubTransaction;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/ContextHubTransactionHelper$2;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onQueryResponse(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    const-string p1, "ContextHubTransactionHelper"

    const-string p2, "Received a query callback on a non-query request"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/hardware/location/ContextHubTransactionHelper$2;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    new-instance p1, Landroid/hardware/location/ContextHubTransaction$Response;

    const/4 p2, 0x7

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    return-void
.end method

.method public blacklist onTransactionComplete(I)V
    .locals 2

    iget-object p0, p0, Landroid/hardware/location/ContextHubTransactionHelper$2;->val$transaction:Landroid/hardware/location/ContextHubTransaction;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    return-void
.end method
