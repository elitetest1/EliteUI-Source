.class public abstract Landroid/tracing/perfetto/DataSourceInstance;
.super Ljava/lang/Object;
.source "DataSourceInstance.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mDataSource:Landroid/tracing/perfetto/DataSource;

.field private final blacklist mInstanceIndex:I


# direct methods
.method public constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/tracing/perfetto/DataSourceInstance;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iput p2, p0, Landroid/tracing/perfetto/DataSourceInstance;->mInstanceIndex:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceInstance;->release()V

    return-void
.end method

.method public final blacklist getInstanceIndex()I
    .locals 0

    iget p0, p0, Landroid/tracing/perfetto/DataSourceInstance;->mInstanceIndex:I

    return p0
.end method

.method protected blacklist onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .locals 0

    return-void
.end method

.method protected blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .locals 0

    return-void
.end method

.method protected blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .locals 0

    return-void
.end method

.method public blacklist release()V
    .locals 1

    iget-object v0, p0, Landroid/tracing/perfetto/DataSourceInstance;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget p0, p0, Landroid/tracing/perfetto/DataSourceInstance;->mInstanceIndex:I

    invoke-virtual {v0, p0}, Landroid/tracing/perfetto/DataSource;->releaseDataSourceInstance(I)V

    return-void
.end method
