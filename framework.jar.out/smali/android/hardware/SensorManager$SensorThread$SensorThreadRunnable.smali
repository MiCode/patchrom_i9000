.class Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$SensorThread;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SensorManager;->access$002(I)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const-string v13, "SensorManager"

    const/4 v9, 0x3

    new-array v8, v9, [F

    .local v8, values:[F
    new-array v6, v10, [I

    .local v6, status:[I
    new-array v7, v10, [J

    .local v7, timestamp:[J
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v9, "SensorManager"

    const-string v9, "=======>>>Sensor Thread RUNNING <<<========"

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v9

    invoke-static {v9, v8, v6, v7}, Landroid/hardware/SensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v3

    .local v3, sensor:I
    aget v0, v6, v12

    .local v0, accuracy:I
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v9

    if-eq v3, v11, :cond_1

    :try_start_1
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_1
    if-ne v3, v11, :cond_2

    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "SensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v10

    invoke-static {v10}, Landroid/hardware/SensorManager;->sensors_destroy_queue(I)V

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/hardware/SensorManager;->access$002(I)I

    iget-object v10, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .end local v0           #accuracy:I
    .end local v3           #sensor:I
    :catchall_1
    move-exception v9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .restart local v0       #accuracy:I
    .restart local v3       #sensor:I
    :cond_3
    :try_start_3
    sget-object v10, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .local v4, sensorObject:Landroid/hardware/Sensor;
    if-eqz v4, :cond_5

    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_5

    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .local v2, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2, v4, v8, v7, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v5           #size:I
    :cond_5
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
