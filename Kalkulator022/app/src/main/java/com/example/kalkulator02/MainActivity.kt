package com.example.kalkulator02

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val number1 = findViewById<EditText>(R.id.number1)
        val number2 = findViewById<EditText>(R.id.number2)
        val result = findViewById<TextView>(R.id.result)

        val btnAdd = findViewById<Button>(R.id.btnAdd)
        val btnSub = findViewById<Button>(R.id.btnSub)
        val btnMul = findViewById<Button>(R.id.btnMul)
        val btnDiv = findViewById<Button>(R.id.btnDiv)

        btnAdd.setOnClickListener {
            val a = number1.text.toString().toDoubleOrNull()
            val b = number2.text.toString().toDoubleOrNull()
            result.text = if (a != null && b != null) "Result: ${a + b}" else "Enter valid numbers"
        }

        btnSub.setOnClickListener {
            val a = number1.text.toString().toDoubleOrNull()
            val b = number2.text.toString().toDoubleOrNull()
            result.text = if (a != null && b != null) "Result: ${a - b}" else "Enter valid numbers"
        }

        btnMul.setOnClickListener {
            val a = number1.text.toString().toDoubleOrNull()
            val b = number2.text.toString().toDoubleOrNull()
            result.text = if (a != null && b != null) "Result: ${a * b}" else "Enter valid numbers"
        }

        btnDiv.setOnClickListener {
            val a = number1.text.toString().toDoubleOrNull()
            val b = number2.text.toString().toDoubleOrNull()
            result.text = when {
                a == null || b == null -> "Enter valid numbers"
                b == 0.0 -> "Cannot divide by zero"
                else -> "Result: ${a / b}"
            }
        }
    }
}
