[
  {
    "name": "sample-django",
    "image": "090442518795.dkr.ecr.ap-northeast-1.amazonaws.com/sample-image:latest",
    "cpu": 333,
    "memory": null,
    "memoryReservation": 600,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 8000
      }
    ],
    "command": ["python3", "manage.py", "runserver", "0.0.0.0:8000"],
    "environment": [
      {
        "name": "RAILS_ENV",
        "value": "production"
      },
      {
        "name": "RACK_ENV",
        "value": "production"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "django-service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "service"
      }
    }
  }
]
